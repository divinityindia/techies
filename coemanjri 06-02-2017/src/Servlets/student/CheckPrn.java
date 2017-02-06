package Servlets.student;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Model.student.StudentDao;

/**
 * Servlet implementation class AddCourse
 */
public class CheckPrn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckPrn() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		if(action.equals("add"))
		{
			try {
				String prnno=request.getParameter("prnno");
				int result=StudentDao.checkPrnEdit(prnno);
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
				int result=StudentDao.checkPrnEdit(prnno);
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
