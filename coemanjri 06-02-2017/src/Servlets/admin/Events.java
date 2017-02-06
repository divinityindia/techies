package Servlets.admin;

import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import Bean.EventBean;
import Model.EventDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddParent
 */
public class Events extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Events() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<EventBean> eventList=GetListItemDao.getEventList();
	        request.setAttribute("eventList", eventList);
			request.getRequestDispatcher("events.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("events.jsp?success=0");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isEvent())
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
			        InputStream document = null;
			        String documentName = null;
			        String documentType = null;
			        long documentLength=0;
			        while (iterator.hasNext()) {

			        	FileItem item = iterator.next();
			        	if (!item.isFormField()) {
			                    	   
			        		document=item.getInputStream();
			        		documentName=item.getName();
			        		documentType = item.getContentType();
			        		documentLength=document.available();
			        		
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
					if(formAction.equals("add"))
					{		
							int branchId=Integer.parseInt(fields.get("branch"));
							String category=fields.get("category");
							String eventtitle=fields.get("eventtitle");
							String organizedby=fields.get("organizedby");
							String organizedfor=fields.get("organizedfor");
							String venue=fields.get("venue");
							String details=fields.get("details");
							String instructions=fields.get("instructions");
							String contactperson=fields.get("contactperson");
							String url=fields.get("url");
							String sdate=fields.get("startdate");
							System.out.println(sdate);
							
							String edate=fields.get("enddate");
							System.out.println(edate);
							String starttime=fields.get("hr")+":"+fields.get("min")+" "+fields.get("am");
							String endtime=null;
							if(fields.get("hr1").equals("HH")||fields.get("min1").equals("MM")||fields.get("am1").equals("AM/PM"))
							{
								endtime=null;
							}
							else
							{
								endtime=fields.get("hr1")+":"+fields.get("min1")+" "+fields.get("am1");
							}
							String repeatoption=fields.get("roption");
							String status=fields.get("status");
							SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
				            java.util.Date date1 = null;
				            java.util.Date date2 = null;
				            java.sql.Date startdate=null;
				            java.sql.Date enddate=null;
				            if(!sdate.equals(""))
				            {
				            	try {
									date1 = sdf1.parse(sdate);
								} catch (ParseException e) {
									System.out.println("date exception");
									e.printStackTrace();
								}
								
								
					            startdate = new java.sql.Date(date1.getTime()); 
				            }
				            
				            if(!edate.equals(""))
				            {
				             
					            try {
									date2 = sdf1.parse(edate);
								} catch (ParseException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
					            enddate = new java.sql.Date(date2.getTime());  
				            }
							
				            int result = EventDao.addEvent(new EventBean(branchId, category, eventtitle, organizedby, organizedfor, venue, details, instructions, document, documentName, documentType, documentLength, url, contactperson, startdate, starttime, repeatoption, enddate, endtime, status));
				    		if(result==1)
				    		{
				    			response.sendRedirect("event?success=1");
				    		}
				    		else
				    		{
				    			response.sendRedirect("event?success=0");
				    		}
					}
					else if(formAction.equals("edit"))
					{
						int eventId=Integer.parseInt(fields.get("eid"));
						int branchId=Integer.parseInt(fields.get("branch"));
						String category=fields.get("category");
						String eventtitle=fields.get("eventtitle");
						String organizedby=fields.get("organizedby");
						String organizedfor=fields.get("organizedfor");
						String venue=fields.get("venue");
						String details=fields.get("details");
						String instructions=fields.get("instructions");
						String contactperson=fields.get("contactperson");
						String url=fields.get("url");
						String sdate=fields.get("startdate");
						String edate=fields.get("enddate");
						String hr=fields.get("hr");
						String min=fields.get("min");
						String am=fields.get("am");
						String hr1=fields.get("hr1");
						String min1=fields.get("min1");
						String am1=fields.get("am1");
						String starttime=null;
						String endtime=null;
						if(hr.equals("HH")||min.equals("MM")||am.equals("AM/PM"))
						{
							starttime="";
						}
						else
						{
							starttime=hr+":"+min+" "+am;
						}
						if(hr1.equals("HH")||min1.equals("MM")||am1.equals("AM/PM"))
						{
							endtime="";
						}
						else
						{
							endtime=hr1+":"+min1+" "+am1;
						}
						
						String repeatoption=fields.get("roption");
						String status=fields.get("status");
						
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
			            java.util.Date date1 = null;
			            java.util.Date date2 = null;
			            java.sql.Date startdate=null;
			            java.sql.Date enddate=null;
			            if(!sdate.equals(""))
			            {
			            	try {
								date1 = sdf1.parse(sdate);
							} catch (ParseException e) {
								System.out.println("date exception");
								e.printStackTrace();
							}
							
							
				            startdate = new java.sql.Date(date1.getTime()); 
			            }
			            
			            if(!edate.equals(""))
			            {
			             
				            try {
								date2 = sdf1.parse(edate);
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
				            enddate = new java.sql.Date(date2.getTime());  
			            } 
						
						
			            int result = EventDao.updateEvent(new EventBean(eventId,branchId, category, eventtitle, organizedby, organizedfor, venue, details, instructions, document, documentName, documentType, documentLength, url, contactperson, startdate, starttime, repeatoption, enddate, endtime, status));
			    		if(result==1)
			    		{
			    			response.sendRedirect("event?success=1");
			    		}
			    		else
			    		{
			    			response.sendRedirect("event?success=0");
			    		}
					}
					
					else
					{
						
						String eventIdList=eventList.substring(1);
						System.out.println(eventIdList);
						int result = EventDao.deleteEvents(eventIdList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("event?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("event?success=0");
			    		}
					}
				}
				catch(Exception e){
					
					e.printStackTrace();
					response.sendRedirect("event?success=3");
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
