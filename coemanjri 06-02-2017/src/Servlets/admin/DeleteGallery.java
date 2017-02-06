package Servlets.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Bean.AccessBean;
import Model.GalleryDao;

/**
 * Servlet implementation class AddClass
 */

public class DeleteGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGallery() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session=request.getSession(false);
			AccessBean bean=(AccessBean)session.getAttribute("right");
			if(session.getAttribute("cat")!=null)
			{
				if(session.getAttribute("cat").equals("Administrator")&&bean.isGallery())
				{
					String page=request.getParameter("page");
					int result=GalleryDao.deleteGallery(page);
					String json = new Gson().toJson(result);
					response.setContentType("application/json");
					response.getWriter().write(json);
					
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
