/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.StudentBean;
import Model.AddStudentDao;
import Model.EditBookDao;
import Model.EditStudentDao;
import Model.GetListItemDao;

/**
 *
 * @author admin
 */
public class EditStudent extends HttpServlet {

   

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
            
            HashMap<String,String> sections=GetListItemDao.getSectionList();
            request.setAttribute("sectionname", sections);
            HashMap<String,String> courses=GetListItemDao.getCourseList();
            request.setAttribute("coursename", courses);
            request.getRequestDispatcher("editstudent.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("editstudent.jsp?success=0");
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
				int studentId=Integer.parseInt(request.getParameter("student"));
		    	StudentBean studentBean=AddStudentDao.getSingleStudent(studentId);
		    	session.setAttribute("studentBean",studentBean);
		    	request.setAttribute("studentBean", studentBean);
		    	response.sendRedirect("editselectedstudent");
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
