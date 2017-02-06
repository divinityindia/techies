package Servlets.employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import Bean.BranchBean;
import Bean.CourseBean;
import Bean.Employee;
import Bean.Student;
import Model.AddBranchDao;
import Model.AddCourseDao;
import Model.AddStudentDao;
import Model.EventDao;
import Model.GetListItemDao;
import Model.employee.EmployeeDao;
import Model.student.StudentDao;

/**
 * Servlet implementation class AddCourse
 */
public class GetEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String by=request.getParameter("by");
		if(by.equals("br"))
		{
			try {
				int branchid=Integer.parseInt(request.getParameter("branch"));
				ArrayList<Employee> emps=EmployeeDao.getEmployeeByBr(branchid);
				String json = new Gson().toJson(emps);
		        response.setContentType("application/json");
		        response.getWriter().write(json);

			} catch (Exception e) {
				e.printStackTrace();
				
			}

		}
		else
		{
			try {
				String fname=request.getParameter("fname");
				String mname=request.getParameter("mname");
				String lname=request.getParameter("lname");
				ArrayList<Employee> emps=EmployeeDao.getEmployeeByName(fname,mname,lname);
				String json = new Gson().toJson(emps);
		        response.setContentType("application/json");
		        response.getWriter().write(json);

			} catch (Exception e) {
				e.printStackTrace();
				
			}
		}
						
	}

	
}
