package Servlets;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.EventBean;
import Bean.GalleryBean;
import Model.AddStudentDao;
import Model.EventDao;
import Model.GalleryDao;
import Model.GetCountDao;

/**
 * Servlet implementation class Count
 */

public class LoadGalleryPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096;      
    public LoadGalleryPage() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
			int gid=Integer.parseInt(request.getParameter("id"));
			Blob image=GalleryDao.getImage(gid);
			ServletOutputStream out;  
			try {
				InputStream is=image.getBinaryStream();
				out = response.getOutputStream();  
				BufferedInputStream bin = new BufferedInputStream(is);  
				BufferedOutputStream bout = new BufferedOutputStream(out);  
				 int ch =0; ;  
				    while((ch=bin.read())!=-1)  
				    {  
				    bout.write(ch);  
				    }  
				      
				    bin.close();  
				   
				    bout.close();  
				    out.close(); 
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				
		String page=request.getParameter("page");
		ArrayList<GalleryBean> gbean=GalleryDao.getId(page);
		String json = new Gson().toJson(gbean);
		response.setContentType("application/json");
		response.getWriter().write(json);
	}

}
