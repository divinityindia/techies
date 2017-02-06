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
import Bean.ExamScheduleBean;
import Bean.SectionBean1;
import Model.AddBranchDao;
import Model.AddClassDao;
import Model.AddSectionDao;
import Model.ExamDao;
import Model.ExamScheduleDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddClass
 */

public class AddExamSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddExamSchedule() {
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
			ArrayList<ExamScheduleBean> examScheduleBeans=ExamScheduleDao.getExamScheduleList();
	        request.setAttribute("examschedulebeans", examScheduleBeans);
	        HashMap<String,String> classes=GetListItemDao.getClassList();
	        request.setAttribute("classname", classes);
	        HashMap<String,String> sections=GetListItemDao.getSectionList();
	        request.setAttribute("sectionname", sections);
	        HashMap<String,String> subjects=GetListItemDao.getSubjectList();
	        request.setAttribute("subjectname", subjects);
	        request.getRequestDispatcher("addexamschedule.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("addexamschedule?success=3");
			
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
						String className=request.getParameter("classname");
						String sectionName=request.getParameter("sectionname");
						String subjectName=request.getParameter("subjectname");
						String doe=request.getParameter("dateofexam");
						SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
						Date date=sdf.parse(doe);
						java.sql.Date dateofExam = new java.sql.Date(date.getTime());
						String timeFrom=request.getParameter("timefrom");
						String timeTo=request.getParameter("timeto");
						String room=request.getParameter("room");
						ExamScheduleBean examScheduleBean=new ExamScheduleBean();
						examScheduleBean.setExamName(examName);
						examScheduleBean.setClassName(className);
						examScheduleBean.setSectionName(sectionName);
						examScheduleBean.setSubjectName(subjectName);
						examScheduleBean.setDateofExam(dateofExam);
						examScheduleBean.setTimeFrom(timeFrom);
						examScheduleBean.setTimeTo(timeTo);
						examScheduleBean.setRoom(room);
						int result = ExamScheduleDao.addExamSchedule(examScheduleBean);
						if(result==1)
						{
							response.sendRedirect("addexamschedule?success=1");
						}
						else
						{
							response.sendRedirect("addexamschedule?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String examName=request.getParameter("examname");
						String className=request.getParameter("classname");
						String sectionName=request.getParameter("sectionname");
						String subjectName=request.getParameter("subjectname");
						String doe=request.getParameter("dateofexam");
						SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
						Date date=sdf.parse(doe);
						java.sql.Date dateofExam = new java.sql.Date(date.getTime());
						String timeFrom=request.getParameter("timefrom");
						String timeTo=request.getParameter("timeto");
						String room=request.getParameter("room");
						int examScheduleId=Integer.parseInt(request.getParameter("esid"));
						ExamScheduleBean examScheduleBean=new ExamScheduleBean();
						examScheduleBean.setExamScheduleId(examScheduleId);
						examScheduleBean.setExamName(examName);
						examScheduleBean.setClassName(className);
						examScheduleBean.setSectionName(sectionName);
						examScheduleBean.setSubjectName(subjectName);
						examScheduleBean.setDateofExam(dateofExam);
						examScheduleBean.setTimeFrom(timeFrom);
						examScheduleBean.setTimeTo(timeTo);
						examScheduleBean.setRoom(room);
					
						
						int result = ExamScheduleDao.editExamSchedule(examScheduleBean);
						if(result==1)
						{
							response.sendRedirect("addexamschedule?success=4");
						}
						else
						{
							response.sendRedirect("addexamschedule?success=5");
						}
					}
					else
					{
						String []examScheduleIdList=request.getParameterValues("examscheduleid");
						
						int result = ExamScheduleDao.deleteExamSchedule(examScheduleIdList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addexamschedule?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addexamschedule?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("addexamschedule?success=3");
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
