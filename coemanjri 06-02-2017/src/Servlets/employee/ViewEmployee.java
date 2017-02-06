package Servlets.employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Bean.Employee;
import Bean.EmployeeExp;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class ViewEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewEmployee() {
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
				request.getRequestDispatcher("viewemployee.jsp").forward(request, response);	
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
