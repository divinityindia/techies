package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.Employee;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class PublicGetEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PublicGetEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		try {
			int branchid=Integer.parseInt(request.getParameter("dept"));
			ArrayList<Employee> emps=EmployeeDao.getEmployeeByBr(branchid);
			String json = new Gson().toJson(emps);
	        response.setContentType("application/json");
	        response.getWriter().write(json);

		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
