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

import Bean.CourseBean;
import Bean.GalleryBean;
import Model.AddCourseDao;
import Model.GalleryDao;

/**
 * Servlet implementation class AddClass
 */

public class AddGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGallery() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session=request.getSession(false);
			
			if(session.getAttribute("cat")!=null)
			{
				if(session.getAttribute("cat").equals("admin"))
				{
					FileItemFactory factory = new DiskFileItemFactory();
			        ServletFileUpload upload = new ServletFileUpload(factory);
			        Iterator<FileItem> iterator = null;
					try {
						iterator = upload.parseRequest(request).iterator();
					} catch (FileUploadException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			        HashMap<String, String> fields = new HashMap<>();
			        HashMap<String, InputStream> images = new HashMap<>();
			        while (iterator.hasNext()) {

			        	FileItem item = iterator.next();
			            if (!item.isFormField()) {
			            	images.put(item.getName(),item.getInputStream());
			            }
			            else {
			            	fields.put(item.getFieldName(), item.getString());
			            }
			        }
			        
			        String heading=fields.get("head");
		            String details=fields.get("details");
		            String page=fields.get("gpage");
		            GalleryBean gbean=new GalleryBean(heading, details, images,page); 
		            int result=GalleryDao.addAlbum(gbean);
		            if(result==1)
					{
						response.sendRedirect("photogallery.jsp?success=1");
					}
					else
					{
						response.sendRedirect("photogallery.jsp?success=0");
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
