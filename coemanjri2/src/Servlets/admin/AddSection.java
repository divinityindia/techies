package Servlets.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.ClassBean;
import Bean.CourseBean;
import Bean.SectionBean;
import Bean.SectionBean1;
import Model.AddClassDao;
import Model.AddCourseDao;
import Model.AddSectionDao;
import Model.CreateUserTypeDao;
import Model.GetListItemDao;

/**
 * Servlet implementation class AddSection
 */
public class AddSection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSection() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<SectionBean> sectionsBeans=AddSectionDao.getSectionList();
	        request.setAttribute("sectionbeans", sectionsBeans);
	        request.getRequestDispatcher("sectionmaster.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("addsection?success=3");
		}
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
				String formAction=request.getParameter("formaction");
				
				try{
					
					if(formAction.equals("add"))
					{
						String sectionName=request.getParameter("sectionname");
						//String category=request.getParameter("category");
						//int classId=Integer.parseInt(request.getParameter("classname"));
						//int teacherId=Integer.parseInt(request.getParameter("teachername"));
						String note=request.getParameter("note");
						//SectionBean sectionBean=new SectionBean();
						SectionBean1 sectionBean1=new SectionBean1();
						sectionBean1.setSectionName(sectionName);
						//sectionBean.setCategory(category);
						//sectionBean.setClassid(classId);
						//sectionBean.setTeacherId(teacherId);
						sectionBean1.setNote(note);
						int result = AddSectionDao.addSection(sectionBean1);
						if(result==1)
						{
							response.sendRedirect("addsection?success=1");
						}
						else
						{
							response.sendRedirect("addsection?success=0");
						}
					}
					else if(formAction.equals("edit"))
					{
						String sectionName=request.getParameter("sectionname");
						//String category=request.getParameter("category");
						//int classId=Integer.parseInt(request.getParameter("classname"));
						//int teacherId=Integer.parseInt(request.getParameter("teachername"));
						String note=request.getParameter("note");
						//SectionBean sectionBean=new SectionBean();
						int sectionId=Integer.parseInt(request.getParameter("sid"));
						SectionBean1 sectionBean1=new SectionBean1();
						sectionBean1.setSectionName(sectionName);
						//sectionBean.setCategory(category);
						//sectionBean.setClassid(classId);
						//sectionBean.setTeacherId(teacherId);
						sectionBean1.setNote(note);
						sectionBean1.setSectionid(sectionId);
						int result = AddSectionDao.editSection(sectionBean1);
						if(result==1)
						{
							response.sendRedirect("addsection?success=4");
						}
						else
						{
							response.sendRedirect("addsection?success=5");
						}
					}
					else
					{
						String []sectionIDList=request.getParameterValues("sectionid");
						
						int result = AddSectionDao.deleteSection(sectionIDList);
						
						if(result!=0)
			    		{
			    			response.sendRedirect("addsection?success=2");
			    		}
			    		else
			    		{
			    			response.sendRedirect("addsection?success=0");
			    		}
					}
				}
				catch(Exception ex){
					
					response.sendRedirect("addsection?success=3");
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
