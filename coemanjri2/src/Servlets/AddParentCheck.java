package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Bean.ParentBean;
import Model.AddParentDao;
import Model.GetCountDao;

/**
 * Servlet implementation class Count
 */

public class AddParentCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddParentCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				int studentId=Integer.parseInt(request.getParameter("student"));
				ParentBean parentBean=AddParentDao.getSingleParent(studentId);
				JSONObject json = new JSONObject();
				json.put("parentid", parentBean.getParentid());
				response.setContentType("application/json");
				response.getWriter().write(json.toString());

			} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect("addparent?success=0");
			}
		
	}

}
