package Servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Employee;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class PublicViewKr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PublicViewKr() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int fid=Integer.parseInt(request.getParameter("fid"));
			int krid=Integer.parseInt(request.getParameter("krid"));
			Employee emp=EmployeeDao.getEmployeeById(fid);
			HashMap<String, String> kr=EmployeeDao.getSingleKr(krid);
			request.setAttribute("kr", kr);
			request.setAttribute("emp", emp);
			request.getRequestDispatcher("knowledgerepository.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
					
	}
}
