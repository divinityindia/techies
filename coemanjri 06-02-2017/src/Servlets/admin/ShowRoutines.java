package Servlets.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.AccessBean;
import Model.GetListItemDao;
import Model.RoutineDao;



public class ShowRoutines extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ShowRoutines() {
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
            HashMap<String,String> courses=GetListItemDao.getCourseList();
            request.setAttribute("coursename", courses);
            request.getRequestDispatcher("showroutines.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("showroutines.jsp?success=3");
			
		}
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isRoutine())
			{
				try{
					String course=request.getParameter("course");
					String branch=request.getParameter("branch");
					String class1=request.getParameter("class");
					
					List<String> sections=RoutineDao.getSections(course,branch,class1);
					String json = new Gson().toJson(sections);
			        response.setContentType("application/json");
			        response.getWriter().write(json);
					
				}
				catch(Exception ex){
					
					response.sendRedirect("showroutines.jsp?success=3");
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
