package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Bean.BranchBean;
import Bean.CourseBean;
import Model.AddBranchDao;
import Model.AddCourseDao;
import Model.AddStudentDao;
import Model.EventDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddCourse
 */
public class CheckPrn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckPrn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		if(action.equals("add"))
		{
			try {
				String prnno=request.getParameter("prnno");
				int result=AddStudentDao.checkPrn(prnno);
				JSONObject json = new JSONObject();
				json.put("result", result);
				response.setContentType("application/json");
				response.getWriter().write(json.toString());

			} catch (Exception e) {
				e.printStackTrace();
				
			}

		}
		else
		{
			try {
				String prnno=request.getParameter("prnno");
				int result=AddStudentDao.checkPrnEdit(prnno);
				JSONObject json = new JSONObject();
				json.put("result", result);
				response.setContentType("application/json");
				response.getWriter().write(json.toString());

			} catch (Exception e) {
				e.printStackTrace();
				
			}
		}
						
	}

	
}
