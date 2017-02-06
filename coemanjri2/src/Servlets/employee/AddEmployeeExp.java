package Servlets.employee;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Employee;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class AddEmployeeExp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployeeExp() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{	
				int fid=Integer.parseInt(request.getParameter("fid"));
				System.out.println(fid);
				String eorg=request.getParameter("eorg");
				String eurl=request.getParameter("eurl");
				String designation=request.getParameter("designation");
				String jobprofile=request.getParameter("jobprofile");
				String fromdate=request.getParameter("fromdate");
				String todate=request.getParameter("todate");
				
				SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
	            java.util.Date date1 = null;
	            java.util.Date date2 = null;
				try {
					date1 = sdf1.parse(fromdate);
				} catch (ParseException e) {
					System.out.println("date exception");
					e.printStackTrace();
				}
	            java.sql.Date fromDate = new java.sql.Date(date1.getTime());  
	            try {
					date2 = sdf1.parse(todate);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            java.sql.Date toDate = new java.sql.Date(date2.getTime()); 
	            String achievement=request.getParameter("achi");
	            Employee emp=new Employee(fid, eorg, eurl, designation, jobprofile, fromDate, toDate, achievement);
	            int result=EmployeeDao.addExp(emp);
					
					int expsuccess=0;
					if(result!=0)
					{
						expsuccess=1;
					}
					else
					{
						expsuccess=0;
					}
					response.sendRedirect("addemployee.jsp?expsuccess="+expsuccess+"&id="+fid);
				
				
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
