/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Bean.SubjectBean;
import Model.AddSubjectDao;
import Model.GetListItemDao;

/**
 *
 * @author admin
 */
public class Attendance extends HttpServlet {

   

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
		try {
			HashMap<String,String> branches=GetListItemDao.getBranchList();
	        request.setAttribute("branchname", branches);
	        HashMap<String,String> classes=GetListItemDao.getClassList();
	        request.setAttribute("classname", classes);
	        HashMap<String,String> sections=GetListItemDao.getSectionList();
	        request.setAttribute("sectionname", sections);
	        
	        HashMap<String,String> courses=GetListItemDao.getCourseList();
	        request.setAttribute("coursename", courses);
	        request.getRequestDispatcher("attendance.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("attendance.jsp?success=0");
			
		}
    	
    	
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	HttpSession session=request.getSession(false);
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				String branchid=request.getParameter("branch");
		        String courseid=request.getParameter("course");
		        System.out.println(courseid);
		        String semester=request.getParameter("semester");
		        int classId=Integer.parseInt(request.getParameter("class"));
		        int sectionId=Integer.parseInt(request.getParameter("section"));
		        
		        SubjectBean subjectBean=new SubjectBean();
		        subjectBean.setCourseId(Integer.parseInt(courseid));
		        subjectBean.setSemester(semester);
		        subjectBean.setBranchId(Integer.parseInt(branchid));
		        HashMap<String, String> subjectList=AddSubjectDao.getSubjectList(subjectBean);
		        
		        session.setAttribute("subjectlist", subjectList);
		        response.sendRedirect("addattendance?courseid="+courseid+"&branchid="+branchid+"&semester="+semester+"&classid="+classId+"&sectionid="+sectionId);
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
