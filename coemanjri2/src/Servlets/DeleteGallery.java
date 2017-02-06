package Servlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;

import Bean.CourseBean;
import Bean.GalleryBean;
import Model.AddCourseDao;
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
			
			if(session.getAttribute("cat")!=null)
			{
				if(session.getAttribute("cat").equals("admin"))
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
