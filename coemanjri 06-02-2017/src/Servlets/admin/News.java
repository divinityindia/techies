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
import Bean.NewsBean;
import Model.GetListItemDao;
import Model.NewsDao;

/**
 * Servlet implementation class AddParent
 */
public class News extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public News() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<NewsBean> newsList=GetListItemDao.getNewsList();
	        request.setAttribute("newsList", newsList);
			request.getRequestDispatcher("news.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("news.jsp?success=0");
			
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
			if(session.getAttribute("cat").equals("Administrator")&&bean.isNews())
			{
				try{
					
					FileItemFactory factory = new DiskFileItemFactory();
			        ServletFileUpload upload = new ServletFileUpload(factory);
			        Iterator<FileItem> iterator = null;
			        String newsList = "";
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
			        		if(item.getFieldName().equals("newsid"))
			        		{
			        			newsList=newsList+","+item.getString();
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
							String newstitle=fields.get("newstitle");
							String details=fields.get("details");
							String url=fields.get("url");
							String sdate=fields.get("startdate");
							String status=fields.get("status");
							SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
				            java.util.Date date1 = null;
				            java.sql.Date startdate=null;
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
				            
				            int result = NewsDao.addNews(new NewsBean(branchId, newstitle, details, document, documentName, documentType, documentLength, url, startdate,  status));
				    		if(result==1)
				    		{
				    			response.sendRedirect("news?success=1");
				    		}
				    		else
				    		{
				    			response.sendRedirect("news?success=0");
				    		}
					}
					else if(formAction.equals("edit"))
					{
						int newsId=Integer.parseInt(fields.get("nid"));
						int branchId=Integer.parseInt(fields.get("branch"));
						String newstitle=fields.get("newstitle");
						String details=fields.get("details");
						String url=fields.get("url");
						String sdate=fields.get("startdate");
						String status=fields.get("status");
						
						SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
			            java.util.Date date1 = null;
			            java.sql.Date startdate=null;
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
			            
			            int result = NewsDao.updateNews(new NewsBean(newsId,branchId,newstitle,details,document,documentName,documentType,documentLength,url,startdate,status));
			    		if(result==1)
			    		{
			    			response.sendRedirect("news?success=1");
			    		}
			    		else
			    		{
			    			response.sendRedirect("news?success=0");
			    		}
					}
					
					else
					{
						
						String newsIdList=newsList.substring(1);
						int result = NewsDao.deleteNews(newsIdList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("news?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("news?success=0");
			    		}
					}
				}
				catch(Exception e){
					
					e.printStackTrace();
					response.sendRedirect("news?success=3");
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
