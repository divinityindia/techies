package Servlets;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.GalleryBean;
import Model.GalleryDao;

/**
 * Servlet implementation class Count
 */

public class LoadGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096;      
    public LoadGallery() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
			String page=request.getParameter("page");
			Blob image=GalleryDao.getImage(page);
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
		
				
		ArrayList<GalleryBean> gbean=GalleryDao.getHeadings();
		String json = new Gson().toJson(gbean);
		response.setContentType("application/json");
		response.getWriter().write(json);
	}

}
