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
import Bean.TeacherBean;
import Model.AddStudentDao;
import Model.AddTeacherDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddTeacher
 */

public class EditTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
    public EditTeacher() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	try {
        	HashMap<String,String> teachers=GetListItemDao.getTeacherList();
    	    request.setAttribute("teachername", teachers);
    	    request.getRequestDispatcher("editteacher.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("editteacher.jsp?success=0");
		}	
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int teacherId=Integer.parseInt(request.getParameter("teacher"));
		TeacherBean teacherBean=AddTeacherDao.getSingleTeacher(teacherId);
		HttpSession session=request.getSession();
		session.setAttribute("teacherBean", teacherBean);
		response.sendRedirect("editselectedteacher");
	}

}
