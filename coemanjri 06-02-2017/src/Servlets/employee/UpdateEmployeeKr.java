package Servlets.employee;

import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;

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

import Bean.AccessBean;
import Bean.Employee;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddTeacher
 */

public class UpdateEmployeeKr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateEmployeeKr() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isAddemployee())
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
		        InputStream article = null;
		        String documentName = null;
		        String documentType = null;
		        long documentLength=0;
		        while (iterator.hasNext()) {

		                       FileItem item = iterator.next();
		                       if (!item.isFormField()) {
		                    	   
		                           article=item.getInputStream();
		                           documentName=item.getName();
		                           documentType = item.getContentType();
		                           documentLength=article.available();
		                                                  }
		                       else {
		                    	   		fields.put(item.getFieldName(), item.getString());
		                    	   	}
		                  }
		    	
		    		int fid=Integer.parseInt(fields.get("fid"));
		            String headline=fields.get("headline");
		            String krCategory=fields.get("krcategory");
		            String publication=fields.get("publication");
		            String author=fields.get("author");
		            String krdate=fields.get("krdate");
		            String kurl=fields.get("kurl");
		            String keywords=fields.get("keywords");
		            String content = fields.get("content");
		            String notes = fields.get("notes");
		            String priority = fields.get("priority");
		            String guide = fields.get("guide");
		            String coguide = fields.get("coguide");
		            String  teamsize= fields.get("tsize");
		            
		            SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		            java.util.Date date1 = null;
		            java.sql.Date krDate=null;
					
		            if(!krdate.equals(""))
		            {
		            	try {
							date1 = sdf1.parse(krdate);
						} catch (ParseException e) {
							System.out.println("date exception");
							e.printStackTrace();
						}
			            krDate = new java.sql.Date(date1.getTime());  
		            }
		            Employee emp=new Employee(fid, headline, krCategory, publication, author, krDate, kurl, article, documentName,documentType,documentLength,keywords, content, notes, priority, guide, coguide, teamsize);
		            
		            int result = EmployeeDao.addEmployeeKr(emp);
		    		if(result!=0)
		    		{
		    			response.sendRedirect("updateemployee?expsuccess=1&action=4&employeeid="+fid);
		    		}
		    		else
		    		{
		    			response.sendRedirect("updateemployee?expsuccess=0&action=4&employeeid="+fid);
		    		}
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
