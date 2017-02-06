/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

import Bean.StudentBean;
import Model.AddStudentDao;
import Model.GetListItemDao;
import Servlets.EditSelectedStudent;

/**
 *
 * @author admin
 */
public class EditSelectedStudent extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	try {
    		HttpSession session=request.getSession(false);
        	StudentBean studentBean=(StudentBean)session.getAttribute("studentBean");
        	HashMap<String,String> branches=GetListItemDao.getBranchList();
            request.setAttribute("branchname", branches);
            HashMap<String,String> sections=GetListItemDao.getSectionList();
            request.setAttribute("sectionname", sections);
            HashMap<String,String> courses=GetListItemDao.getCourseList();
            request.setAttribute("coursename", courses);
            HashMap<String,String> classes=GetListItemDao.getClassList();
            System.out.println("In edit sl st get m");
            System.out.println(studentBean.getStudentid());
            request.setAttribute("studentid", studentBean.getStudentid());
            request.setAttribute("classname", classes);
            request.setAttribute("selectedcourse",studentBean.getCourseId()+"");
            request.setAttribute("selectedbranch",studentBean.getBranchId()+"" );
            request.setAttribute("selectedclass",studentBean.getClassId()+"");
            request.setAttribute("selectedsection",studentBean.getSectionId()+"");
            request.getRequestDispatcher("editselectedstudent.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			
		}
    	
    }

   
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
		    	
		    	
		    		//session.setAttribute("changePhoto", fields.get("changephoto"));
		    		System.out.println(fields.get("changephoto"));
		    		StudentBean sb=(StudentBean)session.getAttribute("studentBean");
		            String studentName=fields.get("studentname");
		            System.out.println(studentName);
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
		            String city=fields.get("city");
		            String state=fields.get("state");
		            String pincode=fields.get("pincode");
		            
		           
		            
		            int classId=Integer.parseInt(fields.get("class"));
		            int sectionId=Integer.parseInt(fields.get("section"));
		            int rollno=Integer.parseInt(fields.get("rollno"));
		            
		            
		            
		            
		            
		            String academicyear=fields.get("academicyear");
		            int branchId=Integer.parseInt(fields.get("branch"));
		            int courseId=Integer.parseInt(fields.get("course"));
		            String semester=fields.get("semester");
		            
		           
		            
		            StudentBean studentBean=new StudentBean();
		            studentBean.setStudentid(sb.getStudentid());
		            studentBean.setStudentName(studentName);
		            studentBean.setPrnno(prnno);
		            studentBean.setGuardianName(guardianName);
		            studentBean.setGender(gender);
		            studentBean.setDateofbirth(dateofbirth);
		            studentBean.setBloodgroup(bloodgroup);
		            studentBean.setReligion(religion);
		            studentBean.setCategory(category);
		            studentBean.setCaste(caste);
		            studentBean.setEmail(email);
		            studentBean.setPhone(phone);
		            studentBean.setAddress(address);
		            studentBean.setCity(city);
		            studentBean.setState(state);
		            studentBean.setPincode(pincode);
		            studentBean.setClassId(classId);
		            studentBean.setSectionId(sectionId);
		            studentBean.setSectionId(sectionId);
		            studentBean.setRollno(rollno);
		            studentBean.setPhotoInputStream(photoInputStream);
		            studentBean.setDateofadmission(dateofadmission);
		            studentBean.setAcademicyear(academicyear);
		            studentBean.setBranchId(branchId);
		            studentBean.setCourseId(courseId);
		            studentBean.setSemester(semester);
		            
		            
		            System.out.println("in edit student= "+pincode);
		            int result = AddStudentDao.updateStudent(studentBean,fields.get("changephoto"));
		    		if(result==1)
		    		{
		    			response.sendRedirect("editstudent?success=1");
		    		}
		    		else
		    		{
		    			response.sendRedirect("editstudent?success=0");
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

    
