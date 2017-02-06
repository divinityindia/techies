package Servlets.admin;

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

import Bean.EventBean;
import Bean.ParentBean;
import Bean.StudentBean;
import Model.AddParentDao;
import Model.AddStudentDao;
import Model.EventDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddParent
 */
public class NewsAndEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsAndEvent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HashMap<String,String> eventList=GetListItemDao.getEventList();
	        request.setAttribute("eventList", eventList);
			request.getRequestDispatcher("newsandevent.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("newsandevent.jsp?success=0");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				try{
					
					FileItemFactory factory = new DiskFileItemFactory();
			        ServletFileUpload upload = new ServletFileUpload(factory);
			        Iterator<FileItem> iterator = null;
			        String eventList = "";
					try {
						iterator = upload.parseRequest(request).iterator();
					} catch (FileUploadException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			        HashMap<String, String> fields = new HashMap<>();
			        InputStream documentInputStream = null;
			        String documentName = null;
			        String documentType = null;
			        long documentLength=0;
			        String eventHeading=null;
			        String eventDetails=null;
			        while (iterator.hasNext()) {

			        	FileItem item = iterator.next();
			        	if (!item.isFormField()) {
			                    	   
			        		documentInputStream=item.getInputStream();
			        		documentName=item.getName();
			        		documentType = item.getContentType();
			        		documentLength=documentInputStream.available();
			        		
			            }
			        	else{
			        		
			        		if(item.getFieldName().equals("eventid"))
			        		{
			        			eventList=eventList+","+item.getString();
			        		}
			        		else
			        		{
			        			fields.put(item.getFieldName(), item.getString());
			        		}
			        		
			        	}
			        }
			    	    String formAction=fields.get("formaction");
			    	    String eventLink=null;
					if(formAction.equals("add"))
					{		
							
							if(fields.get("eventlink").equals(""))
							{
								eventLink=fields.get("eventlink");
							}
							else
							{
								eventLink="http://"+fields.get("eventlink");
							}
							
							if(eventLink.equals(""))
							{
								eventDetails=fields.get("eventdetails");
							}
							else
							{
								eventDetails=fields.get("eventdetails")+" (*Click Here to go to link.)";
							}
							
							if(documentLength==0)
							{
								eventHeading=fields.get("eventheading");
							}
							else
							{
								eventHeading=fields.get("eventheading")+" (*Click Here to download Document.)";
							}
							
							
				            EventBean eventBean=new EventBean();
				            eventBean.setEventHeading(eventHeading);
				            eventBean.setEventDetails(eventDetails);
				            eventBean.setEventLink(eventLink);
				            eventBean.setDocumentInputStream(documentInputStream);
				            eventBean.setDocumentName(documentName);
				            eventBean.setDocumentType(documentType);
				            eventBean.setDocumentLength(documentLength);
				            EventDao eventDao=new EventDao();
				            int result = eventDao.addEvent(eventBean);
				    		if(result==1)
				    		{
				    			response.sendRedirect("newsandevent?success=1");
				    		}
				    		else
				    		{
				    			response.sendRedirect("newsandevent?success=0");
				    		}
					}
					else
					{
						
						String eventIdList=eventList.substring(1);
						System.out.println(eventIdList);
						EventDao eventDao=new EventDao();
						int result = eventDao.deleteEvents(eventIdList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("newsandevent?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("newsandevent?success=0");
			    		}
					}
				}
				catch(Exception e){
					
					response.sendRedirect("newsandevent?success=3");
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
