package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.BranchBean;
import Model.AddBranchDao;



public class AddBranch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddBranch() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try
    	{
    		ArrayList<BranchBean> branchBeans=AddBranchDao.getBranchList();
            request.setAttribute("branchbeans", branchBeans);
            request.getRequestDispatcher("addbranch.jsp").forward(request, response);
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    		response.sendRedirect("addbranch?success=3");
    		
    	}
    	
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
HttpSession session=request.getSession(false);
		
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				String formAction=request.getParameter("formaction");
				
				try{
					
					if(formAction.equals("add"))
					{
						String branch=request.getParameter("branchname");
						BranchBean branchBean=new BranchBean();
						branchBean.setBranchName(branch);
						int result = AddBranchDao.addBranch(branchBean);
						if(result==1)
						{
							response.sendRedirect("addbranch?success=1");
						}
						else
						{
							response.sendRedirect("addbranch?success=0");
						}
					}
					
					else if(formAction.equals("edit"))
					{
						int branchId=Integer.parseInt(request.getParameter("bid"));
						String branch=request.getParameter("branchname");
						BranchBean branchBean=new BranchBean();
						branchBean.setBranchName(branch);
						branchBean.setBranchid(branchId);
						int result = AddBranchDao.editBranch(branchBean);
						if(result==1)
						{
							response.sendRedirect("addbranch?success=4");
						}
						else
						{
							response.sendRedirect("addbranch?success=5");
						}
					}
					else
					{
						String []branchIDList=request.getParameterValues("branchid");
						
						int result = AddBranchDao.deleteBranch(branchIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addbranch?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addbranch?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("addbranch?success=3");
				}
			}
			else
			{
				session=request.getSession(true);
				session.setAttribute("cat", null);
				response.sendRedirect("../login.jsp?success=0");
			}
			
		}
		else
		{
			session=request.getSession(true);
			session.setAttribute("cat", null);
			response.sendRedirect("../login.jsp?success=0");
		}
	
	}

}
