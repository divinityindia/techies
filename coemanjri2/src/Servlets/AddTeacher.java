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

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Bean.StudentBean;
import Bean.TeacherBean;
import Model.AddStudentDao;
import Model.AddTeacherDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddTeacher
 */

public class AddTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTeacher() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HashMap<String,String> classes=GetListItemDao.getClassList();
	        request.setAttribute("classname", classes);
	        request.getRequestDispatcher("addteacher.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("addteacher?success=0");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
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
    	
    		String teacherName=fields.get("teachername");
            String designation=fields.get("designation");
            String gender=fields.get("gender");
            String dob=fields.get("dateofbirth");
            String doj=fields.get("dateofjoining");
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
            String religion=fields.get("religion");
            String caste=fields.get("caste");
            
            String email=fields.get("email");
            String phone=fields.get("phone");
            String address=fields.get("address");
            String city=fields.get("city");
            String state=fields.get("state");
            int classId=Integer.parseInt(fields.get("class"));
            String username=fields.get("username");
            String password=fields.get("password");
            
            TeacherBean teacherBean=new TeacherBean();
            teacherBean.setTeacherName(teacherName);
            teacherBean.setDesignation(designation);
            teacherBean.setDateOfBirth(dateofbirth);
            teacherBean.setGender(gender);
            teacherBean.setReligion(religion);
            teacherBean.setCaste(caste);
            teacherBean.setEmail(email);
            teacherBean.setPhone(phone);
            teacherBean.setAddress(address);
            teacherBean.setCity(city);
            teacherBean.setState(state);
            teacherBean.setClassId(classId);
            teacherBean.setDateofjoining(dateofjoining);
            teacherBean.setPhotoInputStream(photoInputStream);
            teacherBean.setUsername(username);
            teacherBean.setPassword(password);
            
            
            int result = AddTeacherDao.addTeacher(teacherBean);
    		if(result==1)
    		{
    			response.sendRedirect("addteacher?success=1");
    		}
    		else
    		{
    			response.sendRedirect("addteacher?success=0");
    		}
		
	}

}
