package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Bean.BranchBean;
import Model.AddBranchDao;
import Model.AddUserDao;
import Model.LoginDao;



public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		String username=(String)session.getAttribute("username");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isChangepassword())
			{
				
				try{
					
					String cusername=request.getParameter("cusername");
					String nusername=request.getParameter("nusername");
					String cpassword=request.getParameter("cpassword");
					String npassword=request.getParameter("npassword");
					String squestion=request.getParameter("squestion");
					String answer=request.getParameter("answer");
					
					if(cusername.equals(username))
					{
						LoginDao dao=new LoginDao();
			            HashMap<String, String> m=dao.authenticateUserForChange(cusername, cpassword);
			            if(m.get("status").equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
			            {
			            	int userid=Integer.parseInt((String)session.getAttribute("userid"));
			            	int result=AddUserDao.changePassword(userid,nusername,npassword,squestion,answer);
			            	if(result==1)
			            	{
			                    session.invalidate();
			            		response.sendRedirect("../../login.jsp?success=1&message=Credentials has been changed. Please login with new credentials.");
			            	}
			            	else
			            	{
			            		response.sendRedirect("changepassword.jsp?success=0");
			            	}
			            	
			            }
			            
			            else
			            {
			            	response.sendRedirect("changepassword.jsp?success=3&message="+m.get("message"));
			            }	
					}
					else
					{
						response.sendRedirect("error1.jsp");
					}
					
										
				}
				catch(Exception ex){
					
					response.sendRedirect("changepassword.jsp?success=4");
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
