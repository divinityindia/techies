package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.BranchBean;
import Bean.RoutineBean;
import Model.AddBranchDao;
import Model.GetListItemDao;
import Model.RoutineDao;



public class Routine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Routine() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try {
    		HashMap<String,String> branches=GetListItemDao.getBranchList();
            request.setAttribute("branchname", branches);
            HashMap<String,String> classes=GetListItemDao.getClassList();
            request.setAttribute("classname", classes);
            HashMap<String,String> sections=GetListItemDao.getSectionList();
            request.setAttribute("sectionname", sections);
            HashMap<String,String> courses=GetListItemDao.getCourseList();
            request.setAttribute("coursename", courses);
            request.getRequestDispatcher("routinemaster.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("routinemaster.jsp?success=3");
		}
    	    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				String formAction=request.getParameter("action");
				System.out.println(formAction);
				
		        
				try{
					
					if(formAction.equals("add"))
					{
						
						HashMap<String,String> branches=GetListItemDao.getBranchList();
					       
				        HashMap<String,String> classes=GetListItemDao.getClassList();
				        
				        HashMap<String,String> sections=GetListItemDao.getSectionList();
				        
				        HashMap<String,String> courses=GetListItemDao.getCourseList();
						String course=request.getParameter("crsid");
						String branch=request.getParameter("brid");
						String class1=request.getParameter("classname");
						String section=request.getParameter("sectionname");
						String subject=request.getParameter("subjectname");
						String day=request.getParameter("day");
						String timeFrom=request.getParameter("timefrom");
						String timeto=request.getParameter("timeto");
						String room=request.getParameter("room");
						
						RoutineBean routineBean=new RoutineBean(courses.get(course), branches.get(branch), classes.get(class1), sections.get(section), subject.substring(0, subject.indexOf(":")), day, timeFrom, timeto, room);
						
						int result = RoutineDao.addRoutine(routineBean);
						if(result==1)
						{
							response.sendRedirect("routine?success=1");
						}
						else
						{
							response.sendRedirect("routine?success=0");
						}
					}
					
					else if(formAction.equals("edit"))
					{
						int routineId=Integer.parseInt(request.getParameter("routineid"));
						String timeFrom=request.getParameter("etimefrom");
						String timeto=request.getParameter("etimeto");
						String room=request.getParameter("eroom");
						
						RoutineBean routineBean=new RoutineBean(routineId, timeFrom, timeto, room);
						int result = RoutineDao.editRoutine(routineBean);
						String json = new Gson().toJson(result);
						System.out.println(json);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else
					{
						int routineId=Integer.parseInt(request.getParameter("routineid"));
						int result = RoutineDao.deleteRoutine(routineId);
						
						
						String json = new Gson().toJson(result);
						System.out.println(json);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
				}
				catch(Exception ex){
					
					ex.printStackTrace();
					response.sendRedirect("routine?success=3");
				}
			}
			else
			{
				session=request.getSession(true);
				session.setAttribute("cat", null);
				response.sendRedirect("../../login.jsp?success=0");
			}
			
		}
		else
		{
			session=request.getSession(true);
			session.setAttribute("cat", null);
			response.sendRedirect("../../login.jsp?success=0");
		}
		
		
	}

}
