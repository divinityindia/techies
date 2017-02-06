package Servlets.student;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import Bean.BranchBean;
import Bean.CourseBean;
import Bean.Student;
import Model.AddBranchDao;
import Model.AddCourseDao;
import Model.AddStudentDao;
import Model.EventDao;
import Model.GetListItemDao;
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

	
}
