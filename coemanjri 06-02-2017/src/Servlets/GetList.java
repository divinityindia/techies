package Servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.GetListItemDao;

/**
 * Servlet implementation class GetList
 */

public class GetList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetList() {
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
	        HashMap<String,String> classes=GetListItemDao.getClassList();
	        request.setAttribute("classname", classes);
	        HashMap<String,String> sections=GetListItemDao.getSectionList();
	        request.setAttribute("sectionname", sections);
	        HashMap<String,String> courses=GetListItemDao.getCourseList();
	        request.setAttribute("coursename", courses);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

}
