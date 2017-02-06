package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Employee;
import Bean.EmployeeExp;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class PublicViewEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PublicViewEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		int fid=Integer.parseInt(request.getParameter("employeeid"));
		Employee emp=EmployeeDao.getEmployeeById(fid);
		ArrayList<EmployeeExp> expList=EmployeeDao.getExp(fid);
		ArrayList<HashMap<String, String>> qualList=EmployeeDao.getQual(fid);
		ArrayList<HashMap<String, String>> certList=EmployeeDao.getCert(fid);
		ArrayList<HashMap<String, String>> krList=EmployeeDao.getKr(fid);
		request.setAttribute("emp", emp);
		request.setAttribute("expList", expList);
		request.setAttribute("qualList", qualList);
		request.setAttribute("certList", certList);
		request.setAttribute("krList", krList);
		request.getRequestDispatcher("employeeprofile.jsp").forward(request, response);			
	}
}
