package Servlets.employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.AccessBean;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class GetEmployeeKr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetEmployeeKr() {
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
				
					try {
						ArrayList<HashMap<String,String>> krlist=EmployeeDao.getKr(fid);
						String json = new Gson().toJson(krlist);
				        response.setContentType("application/json");
				        response.getWriter().write(json);
					} catch (Exception e) {
						e.printStackTrace();
						
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
