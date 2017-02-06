package Servlets.employee;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.employee.EmployeeDao;

/**
 * Servlet implementation class Count
 */

public class GetKrarticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetKrarticle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
			int krid=Integer.parseInt(request.getParameter("krid"));
			
				
				HashMap<String, Object> m=EmployeeDao.getDocument(krid);
				
				InputStream article=(InputStream)m.get("article");
	            String documentName=(String)m.get("documentName");
	            String documentType=(String)m.get("documentType");
	            int fileLength=article.available();

	            if (documentType == null) {        
	            	documentType = "application/octet-stream";
	            }

	             
	            // set content properties and header attributes for the response
	            response.setContentType(documentType);
	            response.setContentLength(fileLength);
	            String headerKey = "Content-Disposition";
	            String headerValue = String.format("attachment; filename=\"%s\"", documentName);
	            response.setHeader(headerKey, headerValue);

	            // writes the file to the client
	            OutputStream outStream = response.getOutputStream();
	             
	            byte[] buffer = new byte[BUFFER_SIZE];
	            int bytesRead = -1;
	             
	            while ((bytesRead = article.read(buffer)) != -1) {
	                outStream.write(buffer, 0, bytesRead);
	            }
	             
	            article.close();
	            outStream.close();   
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
