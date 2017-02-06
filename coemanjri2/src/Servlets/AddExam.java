package Servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.BranchBean;
import Bean.ClassBean;
import Bean.ExamBean;
import Bean.SectionBean1;
import Model.AddBranchDao;
import Model.AddClassDao;
import Model.AddSectionDao;
import Model.ExamDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddClass
 */

public class AddExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddExam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ArrayList<ExamBean> examBeans=ExamDao.getExamList();
	        request.setAttribute("exambeans", examBeans);
	        request.getRequestDispatcher("addexam.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("addexam?success=3");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				String formAction=request.getParameter("formaction");
				
				try{
					
					if(formAction.equals("add"))
					{
						String examName=request.getParameter("examname");
						String doe=request.getParameter("dateofexam");
						String note=request.getParameter("note");
						ExamBean examBean=new ExamBean();
						examBean.setExamName(examName);
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						Date date=sdf1.parse(doe);
						java.sql.Date dateofExam = new java.sql.Date(date.getTime());  
						examBean.setDateofexam(dateofExam);
						examBean.setNote(note);
						ExamDao examDao=new ExamDao();
						int result = examDao.addExam(examBean);
						if(result==1)
						{
							response.sendRedirect("addexam?success=1");
						}
						else
						{
							response.sendRedirect("addexam?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String examName=request.getParameter("examname");
						String doe=request.getParameter("dateofexam");
						String note=request.getParameter("note");
						int examId=Integer.parseInt(request.getParameter("eid"));
						ExamBean examBean=new ExamBean();
						examBean.setExamName(examName);
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
						Date date=sdf1.parse(doe);
						java.sql.Date dateofExam = new java.sql.Date(date.getTime());  
						examBean.setDateofexam(dateofExam);
						examBean.setNote(note);
						examBean.setExamId(examId);
						ExamDao examDao=new ExamDao();
						int result = examDao.editExam(examBean);
						if(result==1)
						{
							response.sendRedirect("addexam?success=4");
						}
						else
						{
							response.sendRedirect("addexam?success=5");
						}
					}
					else
					{
						String []examIDList=request.getParameterValues("examid");
						
						ExamDao examDao=new ExamDao();
						int result = examDao.deleteExam(examIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addexam?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addexam?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					ex.printStackTrace();
					response.sendRedirect("addexam?success=3");
				}
			}
			else
			{
				session=request.getSession(true);
				session.setAttribute("cat", null);
				response.sendRedirect("../login.jsp?success=0");
			}
			
		}
		else
		{
			session=request.getSession(true);
			session.setAttribute("cat", null);
			response.sendRedirect("../login.jsp?success=0");
		}
		
		
	}

}
