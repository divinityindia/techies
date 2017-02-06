package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.UserBean;
import Model.AddUserDao;

/**
 * Servlet implementation class AddCourse
 */
public class AccessRights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AccessRights() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			
				try {
						int deptid=Integer.parseInt(request.getParameter("deptid"));
						String category=request.getParameter("category");
						ArrayList<UserBean> userBean=AddUserDao.getUsersByDeptCat(deptid,category);
						String json = new Gson().toJson(userBean);
				        response.setContentType("application/json");
				        response.getWriter().write(json);
					} catch (Exception e) {
						e.printStackTrace();
						
					}
				
			
			
			
		
		
						
	}

	
}
