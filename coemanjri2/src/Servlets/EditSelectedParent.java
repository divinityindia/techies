package Servlets;

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

import Bean.ParentBean;
import Bean.StudentBean;
import Model.AddParentDao;
import Model.AddStudentDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddParent
 */
public class EditSelectedParent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditSelectedParent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("editselectedparent.jsp").forward(request, response);
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
		        InputStream photoInputStream = null;
		        while (iterator.hasNext()) {

		                       FileItem item = iterator.next();
		                       if (!item.isFormField()) {
		                    	   
		                           photoInputStream=item.getInputStream();
		                                                  }
		                       else {
		                    	   		fields.put(item.getFieldName(), item.getString());
		                    	   	}
		                  }
		    	
		    	
		        	
		        	ParentBean pb=(ParentBean)session.getAttribute("parentBean");
		    		int studentId=pb.getStudentid();
		            String guardianName=fields.get("guardianname");
		            String fatherName=fields.get("fathername");
		            String motherName=fields.get("mothername");
		            String fatherProfession=fields.get("fatherprofession");
		            String motherProfession=fields.get("motherprofession");
		            
		            String email=fields.get("email");
		            String phone=fields.get("phone");
		            String address=fields.get("address");
		            String city=fields.get("city");
		            String state=fields.get("state");
		            
		            ParentBean parentBean=new ParentBean();
		            parentBean.setStudentid(studentId);
		            parentBean.setGuardianname(guardianName);
		            parentBean.setFathername(fatherName);
		            parentBean.setMothername(motherName);
		            parentBean.setFatherProfession(fatherProfession);
		            parentBean.setMotherProfession(motherProfession);
		            parentBean.setEmail(email);
		            parentBean.setPhone(phone);
		            parentBean.setAddress(address);
		            parentBean.setCity(city);
		            parentBean.setState(state);
		            parentBean.setPhotoInputStream(photoInputStream);
		            
		            int result = AddParentDao.updateParent(parentBean,fields.get("changephoto"));
		    		if(result==1)
		    		{
		    			response.sendRedirect("editparent?success=1");
		    		}
		    		else
		    		{
		    			response.sendRedirect("editparent?success=0");
		    		}
			}
			else
			{
				session=request.getSession(true);
				session.setAttribute("cat", null);
				response.sendRedirect("../login.jsp?success=0");
			}
			
		}
		else
		{
			session=request.getSession(true);
			session.setAttribute("cat", null);
			response.sendRedirect("../login.jsp?success=0");
		}
		
	}

}
