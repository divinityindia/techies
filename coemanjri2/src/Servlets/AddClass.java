package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.BranchBean;
import Bean.ClassBean;
import Bean.SectionBean1;
import Model.AddBranchDao;
import Model.AddClassDao;
import Model.AddSectionDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddClass
 */

public class AddClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			ArrayList<ClassBean> classBeans=AddClassDao.getClassList();
	        request.setAttribute("classbeans", classBeans);
	        
			request.getRequestDispatcher("addclass.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("addclass?success=3");
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
						String className=request.getParameter("classname");
						String classNumeric=request.getParameter("classnumeric");
						//String teacherName=request.getParameter("teachername");
						String note=request.getParameter("note");
						ClassBean classBean=new ClassBean();
						classBean.setClassName(className);
						classBean.setClassNumeric(classNumeric);
						//classBean.setTeacherName(teacherName);
						classBean.setNote(note);
						
						int result = AddClassDao.addClass(classBean);
						if(result==1)
						{
							response.sendRedirect("addclass?success=1");
						}
						else
						{
							response.sendRedirect("addclass?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String className=request.getParameter("classname");
						String classNumeric=request.getParameter("classnumeric");
						//String teacherName=request.getParameter("teachername");
						String note=request.getParameter("note");
						int classId=Integer.parseInt(request.getParameter("cid"));
						ClassBean classBean=new ClassBean();
						classBean.setClassName(className);
						classBean.setClassNumeric(classNumeric);
						
						//classBean.setTeacherName(teacherName);
						classBean.setNote(note);
						classBean.setClassId(classId);
						
						int result = AddClassDao.editClass(classBean);
						if(result==1)
						{
							response.sendRedirect("addclass?success=4");
						}
						else
						{
							response.sendRedirect("addclass?success=5");
						}
					}
					else
					{
						String []classIDList=request.getParameterValues("classid");
						
						int result = AddClassDao.deleteClass(classIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addclass?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addclass?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("addclass?success=3");
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
