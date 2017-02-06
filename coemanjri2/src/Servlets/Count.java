package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import Model.GetCountDao;

/**
 * Servlet implementation class Count
 */

public class Count extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Count() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				try {
					int countPerson[]=GetCountDao.count();
					request.setAttribute("studentCount", countPerson[0]);
					request.setAttribute("teacherCount", countPerson[1]);
					request.setAttribute("parentCount", countPerson[2]);
					request.setAttribute("attendanceCount", countPerson[3]);
					HashMap<String, String> m=new HashMap<>();
					m.put("studentCount", countPerson[0]+"");
					m.put("teacherCount", countPerson[1]+"");
					m.put("parentCount", countPerson[2]+"");
					m.put("attendanceCount", countPerson[3]+"");
					ArrayList<HashMap<String, String>> l=new ArrayList<>();
					l.add(m);
					String json = new Gson().toJson(l);
			        response.setContentType("application/json");
			        response.getWriter().write(json);
				} catch (Exception e) {
					e.printStackTrace();
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
		else
		{
			session=request.getSession(true);
			session.setAttribute("cat", null);
			response.sendRedirect("../login.jsp?success=0");
		}
		
		
	}

}
