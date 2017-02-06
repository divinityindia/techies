package Servlets.employee;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.AccessBean;
import Model.employee.EmployeeDao;



public class DeleteEmployeeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteEmployeeDetails() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isUpdateemployee())
			{
				String flag=request.getParameter("flag");
				try{
					
					if(flag.equals("qual"))
					{
						int qid=Integer.parseInt(request.getParameter("qid"));
						int result = EmployeeDao.deleteQual(qid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else if(flag.equals("cert"))
					{
						int cid=Integer.parseInt(request.getParameter("cid"));
						int result = EmployeeDao.deleteCert(cid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else if(flag.equals("exp"))
					{
						int expid=Integer.parseInt(request.getParameter("expid"));
						int result = EmployeeDao.deleteExp(expid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
					else if(flag.equals("kr"))
					{
						int krid=Integer.parseInt(request.getParameter("krid"));
						int result = EmployeeDao.deleteKr(krid);
						String json = new Gson().toJson(result);
						response.setContentType("application/json");
				        response.getWriter().write(json);
					}
				}
				catch(Exception ex){
					
					ex.printStackTrace();
					response.sendRedirect("usearchemployee.jsp?success=0");
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
