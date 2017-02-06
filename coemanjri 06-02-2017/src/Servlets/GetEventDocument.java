package Servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.EventBean;
import Model.EventDao;

/**
 * Servlet implementation class Count
 */

public class GetEventDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096;  
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEventDocument() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
				EventBean eventBean=EventDao.getDocument(Integer.parseInt(request.getParameter("eventid")));
				InputStream documentInputStream=eventBean.getDocument();
				String documentName=eventBean.getDocumentName();
				String documentType=eventBean.getDocumentType();
				
				int fileLength = documentInputStream.available();
	            
	            System.out.println("fileLength = " + fileLength);

	           

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
	             
	            while ((bytesRead = documentInputStream.read(buffer)) != -1) {
	                outStream.write(buffer, 0, bytesRead);
	            }
	             
	            documentInputStream.close();
	            outStream.close();   
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
