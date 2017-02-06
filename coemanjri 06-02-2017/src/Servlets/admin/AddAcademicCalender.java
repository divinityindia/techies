package Servlets.admin;

import java.io.IOException;
import java.io.InputStream;
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

import Bean.AcademicCalenderBean;
import Bean.AccessBean;
import Model.AcademicCalenderDao;

/**
 * Servlet implementation class AddSubject
 */

public class AddAcademicCalender extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAcademicCalender() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ArrayList<AcademicCalenderBean> acList=AcademicCalenderDao.getAcList();
	        request.setAttribute("acList", acList);
	        request.getRequestDispatcher("academiccalender.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("academiccalender.jsp?success=3");
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
			if(session.getAttribute("cat").equals("Administrator")&&bean.isAcademiccalender())
			{
				try{
					
					FileItemFactory factory = new DiskFileItemFactory();
			        ServletFileUpload upload = new ServletFileUpload(factory);
			        Iterator<FileItem> iterator = null;
			        String acList = "";
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
			        		if(item.getFieldName().equals("acid"))
			        		{
			        			fields.put(item.getFieldName(), item.getString());
			        			acList=acList+","+item.getString();
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
							String branch=fields.get("branch");
							String class1=fields.get("class");
				            AcademicCalenderBean acbean=new AcademicCalenderBean();
				            acbean.setBranch(branch);
				            acbean.setClass1(class1);
				            acbean.setIs(document);
				            acbean.setDocumentName(documentName);
				            acbean.setDocumentType(documentType);
				            int result = AcademicCalenderDao.addAc(acbean);
				    		if(result==1)
				    		{
				    			response.sendRedirect("addacademiccalender?success=1");
				    		}
				    		else
				    		{
				    			response.sendRedirect("addacademiccalender?success=0");
				    		}
					}
					else if(formAction.equals("edit"))
					{
						int acid=Integer.parseInt(fields.get("acid"));
						String branch=fields.get("branch");
						String class1=fields.get("class");
			            AcademicCalenderBean acbean=new AcademicCalenderBean();
			            acbean.setAcid(acid);
			            acbean.setBranch(branch);
			            acbean.setClass1(class1);
			            acbean.setIs(document);
			            acbean.setDocumentName(documentName);
			            acbean.setDocumentType(documentType);
			            
			            int result = AcademicCalenderDao.updateAc(acbean);
			    		if(result==1)
			    		{
			    			response.sendRedirect("addacademiccalender?success=1");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addacademiccalender?success=0");
			    		}
					}
					
					else
					{
						
						String acIdList=acList.substring(1);
						int result = AcademicCalenderDao.deleteAc(acIdList);
						
						if(result!=0)
			    		{
							response.sendRedirect("addacademiccalender?success=1");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addacademiccalender?success=0");
			    		}
					}
				}
				catch(Exception e){
					
					e.printStackTrace();
					response.sendRedirect("addacademiccalender?success=3");
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
