package Servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.AddStudentDao;
import Model.AttendanceDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddAttendance
 */

public class AddAttendance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAttendance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			HashMap<String,String> teachers=GetListItemDao.getTeacherList();
	        request.setAttribute("teachername", teachers);
	        HashMap<String,String> studentList=AddStudentDao.getStudent(request.getParameter("courseid"), request.getParameter("semester"), request.getParameter("branchid"),request.getParameter("classid"),request.getParameter("sectionid"));
	        
	        if(studentList.isEmpty())
	        {
	        	System.out.println(studentList);
	        	response.sendRedirect("attendance?success=3");
	        	
	        }
	        else
	        {
	        	System.out.println(studentList);
	        	request.setAttribute("studentList", studentList);
	            System.out.println(request.getParameter("courseid"));
	            
	            HttpSession session=request.getSession();
	            session.setAttribute("courseid", request.getParameter("courseid"));
	            session.setAttribute("semester", request.getParameter("semester"));
	            session.setAttribute("branchid", request.getParameter("branchid"));
	            session.setAttribute("classid", request.getParameter("classid"));
	            session.setAttribute("sectionid", request.getParameter("sectionid"));
	            
	            request.getRequestDispatcher("addattendance.jsp").forward(request, response);
	        }
		}
		catch(Exception e)
		{
			response.sendRedirect("addattendance.jsp?success=0");
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
				String courseId=session.getAttribute("courseid").toString();
				System.out.println(courseId);
				String semester=session.getAttribute("semester").toString();
				String branchId=session.getAttribute("branchid").toString();
				String classId=session.getAttribute("classid").toString();
				String sectionId=session.getAttribute("sectionid").toString();
				String teacherId=request.getParameter("teachername");
				String subjectId=request.getParameter("subject");
				String strdate=request.getParameter("date");
				
				
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				java.util.Date utildate = null;
				try {
					utildate = sdf.parse(strdate);
				} catch (ParseException e) {
					System.out.println("date exception");
					e.printStackTrace();
				}
		        java.sql.Date sqlDate = new java.sql.Date(utildate.getTime());  
		        String studentIdList[] = request.getParameterValues("status");
		        
		        int result = AttendanceDao.addAttendanceRecord(studentIdList,sqlDate,teacherId,subjectId,courseId,semester,branchId,classId,sectionId);
				if(result==1)
				{
					response.sendRedirect("attendance?success=1");
				}
				else
				{
					response.sendRedirect("attendance?success=0");
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
