package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Bean.DepartmentBean;
import Model.AddDeptDao;



public class AddDepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddDepartment() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try
    	{
    		ArrayList<DepartmentBean> deptBeans=AddDeptDao.getDeptList();
            request.setAttribute("deptbeans", deptBeans);
            request.getRequestDispatcher("departmentmaster.jsp").forward(request, response);
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    		response.sendRedirect("departmentmaster.jsp?success=3");
    		
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
						String departmentName=request.getParameter("deptname");
						DepartmentBean deptBean=new DepartmentBean();
						deptBean.setDeptName(departmentName);
						int result = AddDeptDao.addDept(deptBean);
						if(result==1)
						{
							response.sendRedirect("adddepartment?success=1");
						}
						else
						{
							response.sendRedirect("adddepartment?success=0");
						}
					}
					
					else if(formAction.equals("edit"))
					{
						int deptId=Integer.parseInt(request.getParameter("did"));
						String deptName=request.getParameter("deptname");
						DepartmentBean deptBean=new DepartmentBean();
						deptBean.setDeptName(deptName);
						deptBean.setDeptid(deptId);
						int result = AddDeptDao.editDept(deptBean);
						if(result==1)
						{
							response.sendRedirect("adddepartment?success=4");
						}
						else
						{
							response.sendRedirect("adddepartment?success=5");
						}
					}
					else
					{
						String [] deptIDList=request.getParameterValues("deptid");
						
						int result = AddDeptDao.deleteDept(deptIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("adddepartment?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("adddepartment?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("adddepartment?success=3");
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
