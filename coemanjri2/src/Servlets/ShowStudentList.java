/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.simple.JSONObject;

import com.google.gson.Gson;

import Bean.StudentBean;
import Model.AddParentDao;
import Model.AddStudentDao;
import Model.GetListItemDao;

/**
 *
 * @author admin
 */
public class ShowStudentList extends HttpServlet {

  
  

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
            HashMap<String,String> courses=GetListItemDao.getCourseList();
            request.setAttribute("coursename", courses);
            HashMap<String,String> classes=GetListItemDao.getClassList();
            request.setAttribute("classname", classes);
            HashMap<String,String> sections=GetListItemDao.getSectionList();
            request.setAttribute("sectionname", sections);
//            HashMap<String,String> emergnos=AddParentDao.getPhonenos();
//            request.setAttribute("emergno", emergnos);
            request.getRequestDispatcher("showstudentlist.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("showstudentlist.jsp?success=3");
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
				int courseId=Integer.parseInt(request.getParameter("course"));
		    	int branchId=Integer.parseInt(request.getParameter("branch"));
		        String semester=request.getParameter("semester");
		        
		        ArrayList<StudentBean> studentBeans=AddStudentDao.getAllStudents(courseId,branchId,semester);
		        String json = new Gson().toJson(studentBeans);
		        response.setContentType("application/json");
		        response.getWriter().write(json);
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

