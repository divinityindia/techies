package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.BranchBean;
import Bean.RoutineBean;
import Model.AddBranchDao;
import Model.GetListItemDao;
import Model.RoutineDao;



public class RoutineSectionwise extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RoutineSectionwise() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try{
			String course=request.getParameter("course");
			String branch=request.getParameter("branch");
			String class1=request.getParameter("class");
			String section=request.getParameter("section");
			
			ArrayList<RoutineBean> routines=RoutineDao.getRoutines(course,branch,class1,section);
			System.out.println(routines);
			String json = new Gson().toJson(routines);
	        response.setContentType("application/json");
	        response.getWriter().write(json);
			
		}
		catch(Exception ex){
			
			response.sendRedirect("showroutines.jsp?success=3");
		}
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	super.doPost(req, resp);
    }

	
	
}
