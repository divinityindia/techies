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

import Bean.Employee;
import Bean.StudentBean;
import Bean.TeacherBean;
import Model.AddStudentDao;
import Model.AddTeacherDao;
import Model.FacultyDao;
import Model.GetListItemDao;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddTeacher
 */

public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		        InputStream photo = null;
		        while (iterator.hasNext()) {

		                       FileItem item = iterator.next();
		                       if (!item.isFormField()) {
		                    	   
		                           photo=item.getInputStream();
		                                                  }
		                       else {
		                    	   		fields.put(item.getFieldName(), item.getString());
		                    	   	}
		                  }
		    	
		    		String sal=fields.get("salutation");
		            String fname=fields.get("fname");
		            String mname=fields.get("mname");
		            String lname=fields.get("lname");
		            String panno=fields.get("panno");
		            String aadharno=fields.get("aadharno");
		            String paddress=fields.get("paddress");
		            String caddress=fields.get("caddress");
		            String pstate = fields.get("pstate");
		            String cstate = fields.get("state");
		            String pcity = fields.get("pcity");
		            String ccity = fields.get("city");
		            String ppin = fields.get("ppincode");
		            String  cpin= fields.get("pincode");
		            String dob = fields.get("dob");
		            String  gender= fields.get("gender");
		            String religion = fields.get("religion");
		            String  category= fields.get("category");
		            String  caste= fields.get("caste");
		            
		            String  mstatus= fields.get("mstatus");
		            String  mobile = fields.get("phone");
		            String  email= fields.get("email");
		            String  website= fields.get("website");
		            int branchId = Integer.parseInt(fields.get("branch"));
		            String  post= fields.get("post");
		            String  doj= fields.get("doj");
		            String  noa= fields.get("noa");
		            String  noj= fields.get("noj");
		            
		            SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		            java.util.Date date1 = null;
		            java.util.Date date2 = null;
					try {
						date1 = sdf1.parse(dob);
					} catch (ParseException e) {
						System.out.println("date exception");
						e.printStackTrace();
					}
		            java.sql.Date dateofbirth = new java.sql.Date(date1.getTime());  
		            try {
						date2 = sdf1.parse(doj);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		            java.sql.Date dateofjoining = new java.sql.Date(date2.getTime());  
		            
		            
		            Employee eBean=new Employee(sal, fname, mname, lname, photo, panno, aadharno, paddress, caddress, pstate, cstate, pcity, ccity, ppin, cpin, dateofbirth, gender, religion, category, caste, mstatus, mobile, email, website, branchId, post, dateofjoining, noa, noj);
		            
		            int result = EmployeeDao.addEmployee(eBean);
		    		if(result!=0)
		    		{
		    			response.sendRedirect("addemployee.jsp?success=1&id="+result);
		    		}
		    		else
		    		{
		    			response.sendRedirect("addemployee.jsp?success=0");
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
