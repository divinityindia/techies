/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Bean.SubjectBean;
import Model.AddSubjectDao;

/**
 *
 * @author admin
 */
public class ShowDropDownSubject extends HttpServlet {

 
   
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
        		int courseId=Integer.parseInt(request.getParameter("course"));
                int branchId=Integer.parseInt(request.getParameter("branch"));
                SubjectBean subjectBean=new SubjectBean();
                HashMap<String, String> subjectList=AddSubjectDao.getSubjectList(courseId,branchId);
                JSONObject json = new JSONObject();
                json.putAll(subjectList);
                response.setContentType("application/json");
                response.getWriter().write(json.toString());

			} catch (Exception e) {
				e.printStackTrace();
			}
            
    }
}
