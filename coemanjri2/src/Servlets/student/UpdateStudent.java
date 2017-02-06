/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets.student;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;

import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Bean.Parent;
import Bean.Student;
import Bean.StudentBean;
import Bean.addstudent;
import Model.AddStudentDao;
import Model.CreateUserTypeDao;
import Model.GetListItemDao;
import Model.parent.ParentDao;
import Model.student.StudentDao;

/**
 *
 * @author admin
 */
public class UpdateStudent extends HttpServlet {

	private static final long serialVersionUID = 1L;


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
		        InputStream gphoto = null;
		        while (iterator.hasNext()) {

		                       FileItem item = iterator.next();
		                       if (!item.isFormField()) {
		                    		   photo=item.getInputStream();
		                       }
		                       else {
		                    	   fields.put(item.getFieldName(), item.getString());
		                       }
		                  }
		    	
		    		String chkphoto=fields.get("chkphoto");
		    		int studentId=Integer.parseInt(fields.get("studentid"));
		            String studentName=fields.get("studentname");
		            String prnno=fields.get("prnno");
		            String guardianName=fields.get("guardianname");
		            String gender=fields.get("gender");
		            String dob=fields.get("dateofbirth");
		            String doa=fields.get("dateofadmission");
		            
		            //DateFormat sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
		            
		            
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
						date2 = sdf1.parse(doa);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		            java.sql.Date dateofadmission = new java.sql.Date(date2.getTime());  
		            
		            
		            
		            String bloodgroup=fields.get("bloodgroup");
		           
		            String religion=fields.get("religion");
		            String category=fields.get("category");
		            String caste=fields.get("caste");
		            String email=fields.get("email");
		            String phone=fields.get("phone");
		            String address=fields.get("address");
		            String paddress=fields.get("paddress");
		            String city=fields.get("city");
		            String pcity=fields.get("pcity");	
		            String state=fields.get("state");
		            String pstate=fields.get("pstate");
		            String pincode=fields.get("pincode");
		            String ppincode=fields.get("ppincode");
		            
		            
		            String academicyear=fields.get("academicyear");
		            int courseId=Integer.parseInt(fields.get("course"));
		            int branchId=Integer.parseInt(fields.get("branch"));
		            int classId=Integer.parseInt(fields.get("class"));
		            String semester=fields.get("semester");
		            int sectionId;
		            if(fields.get("section")==null)
		            {
		            	sectionId=0;
		            }
		            else
		            {
		            	sectionId=Integer.parseInt(fields.get("section"));
		            }
		            
		            int rollno=Integer.parseInt(fields.get("rollno"));
		            
		            
		            String fatherName=fields.get("fathername");
		            String motherName=fields.get("mothername");
		            String foccupation=fields.get("focc");
		            String moccupation=fields.get("mocc");
		            
		            String gphone=fields.get("gphone");
		            String gaddress=fields.get("gaddress");
		            
		            Student student=new Student(studentId,studentName, prnno, guardianName, dateofbirth, photo, gender, bloodgroup, religion, category, caste, email, phone, address, paddress, city, pcity, state, pstate, pincode, ppincode, academicyear, courseId, branchId, classId, semester, sectionId, rollno, dateofadmission,fatherName,motherName,foccupation,moccupation,gphone,gaddress);
		            
		            int result = StudentDao.updateStudent(student,chkphoto);
		    		if(result!=0)
		    		{
		    			Parent parent=new Parent(studentId, guardianName, fatherName, motherName, foccupation, moccupation, gphone, gaddress);
		    			int presult = ParentDao.updateParent(parent);
		    			if(presult!=0)
			    		{
		    				response.sendRedirect("editstudent.jsp?success=1&psuccess=1");
			    		}
		    			else{
		    				response.sendRedirect("editstudent.jsp?success=1&psuccess=0");
		    			}
		    			
		    		}
		    		else
		    		{
		    			response.sendRedirect("editstudent.jsp?success=0&psuccess=0");
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

