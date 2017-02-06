package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Bean.CourseBean;
import Model.AddCourseDao;

/**
 * Servlet implementation class AddCourse
 */
public class AddCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			ArrayList<CourseBean> courseBeans=AddCourseDao.getCourseList();
			request.setAttribute("coursebeans", courseBeans);
	    	request.getRequestDispatcher("coursemaster.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("coursemaster.jsp?success=3");
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
			if(session.getAttribute("cat").equals("Administrator")&&bean.isCourse())
			{
				String formAction=request.getParameter("formaction");
				
				try{
					
					if(formAction.equals("add"))
					{
						String courseName=request.getParameter("coursename");
						String courseDuration=request.getParameter("courseduration");
						
						CourseBean courseBean=new CourseBean();
						courseBean.setCourseName(courseName);
						courseBean.setCourseDuration(courseDuration);
						
						
						int result = AddCourseDao.addCourse(courseBean);
						if(result==1)
						{
							response.sendRedirect("addcourse?success=1");
						}
						else
						{
							response.sendRedirect("addcourse?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String courseName=request.getParameter("coursename");
						String courseDuration=request.getParameter("courseduration");
						String courseId=request.getParameter("cid");
						CourseBean courseBean=new CourseBean();
						courseBean.setCourseId(Integer.parseInt(courseId));
						courseBean.setCourseName(courseName);
						courseBean.setCourseDuration(courseDuration);
						
						int result = AddCourseDao.editCourse(courseBean);
						if(result==1)
						{
							response.sendRedirect("addcourse?success=4");
						}
						else
						{
							response.sendRedirect("addcourse?success=5");
						}
					}
					else
					{
						String []courseIDList=request.getParameterValues("courseid");
						
						int result = AddCourseDao.deleteCourse(courseIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addcourse?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addcourse?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					ex.printStackTrace();
					response.sendRedirect("addcourse?success=3");
					
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
