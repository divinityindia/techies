package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.AcademicCalenderBean;
import Bean.Employee;
import Model.AcademicCalenderDao;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class Academics extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Academics() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ArrayList<Employee> hodLists=EmployeeDao.getHod();
			ArrayList<HashMap<String, String>> allKrList=EmployeeDao.getAllKr();
			ArrayList<AcademicCalenderBean> acList=AcademicCalenderDao.getAcList();
			request.setAttribute("allKrList", allKrList);
			request.setAttribute("acList", acList);
			request.setAttribute("hodList", hodLists);
			request.getRequestDispatcher("academics.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
					
	}
}
