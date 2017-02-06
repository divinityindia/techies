package Servlets.student;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.student.StudentDao;

/**
 * Servlet implementation class PhotoServlet
 */
public class PhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int studentId=Integer.parseInt(request.getParameter("studentid"));
			Blob image=StudentDao.getImage(studentId);
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
}