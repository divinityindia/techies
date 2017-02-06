package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Bean.UserBean;
import Model.AddUserDao;



public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CreateUser() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try
    	{
    		ArrayList<UserBean> userBeans=AddUserDao.getUserList();
            request.setAttribute("userbeans", userBeans);
            request.getRequestDispatcher("usersadminmaster.jsp").forward(request, response);
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    		response.sendRedirect("usersadminmaster.jsp?success=3");
    		
    	}
    	
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isUser())
			{
				String formAction=request.getParameter("formaction");
				
				try{
					
					if(formAction.equals("add"))
					{
						int deptid=Integer.parseInt(request.getParameter("dept"));
						String category=request.getParameter("category");
						String username=request.getParameter("username");
						String password=request.getParameter("password");
						UserBean userBean=new UserBean();
						userBean.setDeptid(deptid);
						userBean.setCategory(category);
						userBean.setUsername(username);
						userBean.setPassword(password);
						userBean.setAccessrights(new AccessBean());
						int result = AddUserDao.addUser(userBean);
						if(result==1)
						{
							response.sendRedirect("createuser?success=1");
						}
						else
						{
							response.sendRedirect("createuser?success=0");
						}
					}
					
					else if(formAction.equals("edit"))
					{
						int userId=Integer.parseInt(request.getParameter("uid"));
						int deptid=Integer.parseInt(request.getParameter("dept"));
						String category=request.getParameter("category");
						String username=request.getParameter("username");
						String password=request.getParameter("password");
						UserBean userBean=new UserBean();
						userBean.setUserid(userId);
						userBean.setDeptid(deptid);
						userBean.setCategory(category);
						userBean.setUsername(username);
						userBean.setPassword(password);
						int result = AddUserDao.editUser(userBean);
						if(result==1)
						{
							response.sendRedirect("createuser?success=4");
						}
						else
						{
							response.sendRedirect("createuser?success=5");
						}
					}
					else
					{
						String [] userIDList=request.getParameterValues("userid");
						
						int result = AddUserDao.deleteUser(userIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("createuser?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("createuser?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("createuser?success=3");
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
