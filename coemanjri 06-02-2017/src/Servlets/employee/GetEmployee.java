package Servlets.employee;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.AccessBean;
import Bean.Employee;
import Model.employee.EmployeeDao;

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
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isSearchemployee())
			{
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
			else
			{
				session=request.getSession(true);
				session.setAttribute("cat", null);
				response.sendRedirect("../../login.jsp?success=0");
			}
			
		}
		else
		{
			session=request.getSession(true);
			session.setAttribute("cat", null);
			response.sendRedirect("../../login.jsp?success=0");
		}
		
						
	}

	
}
