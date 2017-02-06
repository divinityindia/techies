package Servlets.student;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.AccessBean;
import Bean.Student;
import Model.student.StudentDao;

/**
 * Servlet implementation class AddCourse
 */
public class GetStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isSearchstudent())
			{
				String by=request.getParameter("by");
				if(by.equals("prn"))
				{
					try {
						String prnno=request.getParameter("prnno");
						System.out.println(prnno);
						Student student=StudentDao.getStudentByPrn(prnno);
						String json = new Gson().toJson(student);
				        response.setContentType("application/json");
				        response.getWriter().write(json);
						
						/*System.out.println(student.getStudentName());
						JSONObject json = new JSONObject();
						json.put("result", student);
						response.setContentType("application/json");
						response.getWriter().write(json.toString());// for single variable*/

					} catch (Exception e) {
						e.printStackTrace();
						
					}

				}
				else
				{
					try {
						String academicyear=request.getParameter("academicyear");
						System.out.println(academicyear);
						int courseid=Integer.parseInt(request.getParameter("course"));
						int branchid=Integer.parseInt(request.getParameter("branch"));
						int classid=Integer.parseInt(request.getParameter("class"));
						System.out.println(academicyear+" "+courseid+" "+branchid+" "+classid);
						ArrayList<Student> students=StudentDao.getStudentByCrs(courseid,branchid,classid,academicyear);
						String json = new Gson().toJson(students);
				        response.setContentType("application/json");
				        response.getWriter().write(json);
						
						/*System.out.println(student.getStudentName());
						JSONObject json = new JSONObject();
						json.put("result", student);
						response.setContentType("application/json");
						response.getWriter().write(json.toString());// for single variable*/

					} catch (Exception e) {
						e.printStackTrace();
						
					}
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
