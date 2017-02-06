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
import Bean.SubjectBean;
import Model.AddSubjectDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddSubject
 */

public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSubject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HashMap<String,String> branches=GetListItemDao.getBranchList();
	        request.setAttribute("branchname", branches);
	        System.out.println(branches);
	        HashMap<String,String> courses=GetListItemDao.getCourseList();
	        request.setAttribute("coursename", courses);
	        ArrayList<SubjectBean> subjects=AddSubjectDao.getSubjectList();
	        request.setAttribute("subjectbeans", subjects);
	        
	        HttpSession session=request.getSession();
	        
	        session.setAttribute("branchName", branches);
	        session.setAttribute("courseName", courses);
	        request.getRequestDispatcher("subjectmaster.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("subjectmaster.jsp?success=3");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isSubject())
			{
				String formAction=request.getParameter("formaction");
				
				try{
					
					if(formAction.equals("add"))
					{
						String branchId=request.getParameter("branch");
				        String courseId=request.getParameter("course");
				        String semester=request.getParameter("semester");
				        
				        
				        HashMap<String,String> courses=(HashMap)session.getAttribute("courseName");
				        HashMap<String,String> branches=(HashMap)session.getAttribute("branchName");
				        String subjectName=request.getParameter("subjectname")+"::"+courses.get(courseId)+"::"+branches.get(branchId)+"::"+semester;
						
				        SubjectBean subjectBean=new SubjectBean();
				        subjectBean.setSubjectName(subjectName);
				        subjectBean.setCourseId(Integer.parseInt(courseId));
				        subjectBean.setSemester(semester);
				        subjectBean.setBranchId(Integer.parseInt(branchId));
				        
				        int result = AddSubjectDao.addSubject(subjectBean);
						if(result==1)
						{
							response.sendRedirect("addsubject?success=1");
						}
						else
						{
							response.sendRedirect("addsubject?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String branchId=request.getParameter("branch");
				        String courseId=request.getParameter("course");
				        String semester=request.getParameter("semester");
				        
				        
				        HashMap<String,String> courses=(HashMap)session.getAttribute("courseName");
				        HashMap<String,String> branches=(HashMap)session.getAttribute("branchName");
				        String subjectName=request.getParameter("subjectname")+"::"+courses.get(courseId)+"::"+branches.get(branchId)+"::"+semester;
						int subjectId=Integer.parseInt(request.getParameter("sid"));
				        SubjectBean subjectBean=new SubjectBean();
				        subjectBean.setSubjectName(subjectName);
				        subjectBean.setCourseId(Integer.parseInt(courseId));
				        subjectBean.setSemester(semester);
				        subjectBean.setBranchId(Integer.parseInt(branchId));
				        subjectBean.setSubjectid(subjectId);
				        
				        int result = AddSubjectDao.editSubject(subjectBean);
						if(result==1)
						{
							response.sendRedirect("addsubject?success=4");
						}
						else
						{
							response.sendRedirect("addsubject?success=5");
						}
					}
					else
					{
						String []subjectIDList=request.getParameterValues("subjectid");
						
						int result = AddSubjectDao.deleteSubject(subjectIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addsubject?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addsubject?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("addsubject?success=3");
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
