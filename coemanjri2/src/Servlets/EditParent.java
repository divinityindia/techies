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
public class EditParent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditParent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				HashMap<String,String> branches=GetListItemDao.getBranchList();
		        request.setAttribute("branchname", branches);
		        HashMap<String,String> sections=GetListItemDao.getSectionList();
		        request.setAttribute("sectionname", sections);
		        HashMap<String,String> courses=GetListItemDao.getCourseList();
		        request.setAttribute("coursename", courses);
				request.getRequestDispatcher("editparent.jsp").forward(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect("editparent.jsp?success=0");
			}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Student ID = "+Integer.parseInt(request.getParameter("student")));
		int studentId=Integer.parseInt(request.getParameter("student"));
		ParentBean parentBean=AddParentDao.getSingleParent(studentId);
    	HttpSession session=request.getSession();
    	session.setAttribute("parentBean",parentBean);
    	//request.setAttribute("studentBean", studentBean);
    	response.sendRedirect("editselectedparent");
	}

}
