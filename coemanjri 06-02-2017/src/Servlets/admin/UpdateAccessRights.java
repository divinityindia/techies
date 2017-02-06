package Servlets.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Model.AccessDao;

/**
 * Servlet implementation class AddCourse
 */
public class UpdateAccessRights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateAccessRights() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isAccess())
			{
					try {
						String id=request.getParameter("userid");
						int cUserId=Integer.parseInt((String)session.getAttribute("userid"));
						int userid=Integer.parseInt(id.substring(42));
						String username=request.getParameter("username");
						String category=request.getParameter("category");
						AccessBean[] ab=AccessDao.getAccessRights(userid,cUserId);
						request.setAttribute("username", username);
						request.setAttribute("category", category);
						request.setAttribute("userid", userid);
						request.setAttribute("cbean", ab[0]);
						request.setAttribute("bean", ab[1]);
						request.getRequestDispatcher("updateaccessrights.jsp").forward(request, response);
					} catch (Exception e) {
						e.printStackTrace();
						
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
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isAccess())
			{
				
				try{
					
						int userid=Integer.parseInt(request.getParameter("userid"));
						boolean addstudent=request.getParameter("addstudent") != null;
						boolean searchstudent=request.getParameter("searchstudent") != null;
						boolean updatestudent=request.getParameter("updatestudent") != null;
						boolean addemployee=request.getParameter("addemployee") != null;
						boolean searchemployee=request.getParameter("searchemployee") != null;
						boolean updateemployee=request.getParameter("updateemployee") != null;
						boolean news=request.getParameter("news") != null;
						boolean event=request.getParameter("event") != null;
						boolean routine=request.getParameter("routine") != null;
						boolean gallery=request.getParameter("gallery") != null;
						boolean user=request.getParameter("user") != null;
						boolean access=request.getParameter("access") != null;
						boolean course=request.getParameter("course") != null;
						boolean branch=request.getParameter("branch") != null;
						boolean class1=request.getParameter("class") != null;
						boolean section=request.getParameter("section") != null;
						boolean subject=request.getParameter("subject") != null;
						boolean leave=request.getParameter("leave") != null;
						boolean hostel=request.getParameter("hostel") != null;
						boolean transport=request.getParameter("transport") != null;
						boolean holiday=request.getParameter("holiday") != null;
						boolean studentattendance=request.getParameter("studentattendance") != null;
						boolean teacherattendance=request.getParameter("teacherattendance") != null;
						boolean examattendance=request.getParameter("examattendance") != null;
						boolean exam=request.getParameter("exam") != null;
						boolean examschedule=request.getParameter("examschedule") != null;
						boolean mark=request.getParameter("mark") != null;
						boolean lmember=request.getParameter("lmember") != null;
						boolean lbook=request.getParameter("lbook") != null;
						boolean lissue=request.getParameter("lissue") != null;
						boolean lfine=request.getParameter("lfine") != null;
						boolean mailsms=request.getParameter("mailsms") != null;
						boolean message=request.getParameter("message") != null;
						boolean report=request.getParameter("report") != null;
						boolean visitor=request.getParameter("visitor") != null;
						boolean feetype=request.getParameter("feetype") != null;
						boolean invoice=request.getParameter("invoice") != null;
						boolean balance=request.getParameter("balance") != null;
						boolean expense=request.getParameter("expense") != null;
						boolean academiccalender=request.getParameter("academiccalender") != null;
						boolean paymentsetting=request.getParameter("paymentsetting") != null;
						
						AccessBean abean=new AccessBean(userid, addstudent, searchstudent, updatestudent, addemployee, searchemployee, updateemployee, news, event, routine, gallery, user, access, course, branch, class1, section, subject, leave, hostel, transport, holiday, studentattendance, teacherattendance, examattendance, exam, examschedule, mark, lmember, lbook, lissue, lfine, mailsms, message, report, visitor, feetype, invoice, balance, expense, paymentsetting,academiccalender);
						
						int result = AccessDao.updateAccessRights(abean);
						System.out.println(result);
						if(result!=0)
						{
							response.sendRedirect("accessrightsadmin.jsp?success=1");
						}
						else
						{
							response.sendRedirect("accessrightsadmin.jsp?success=0");
						}	
				}
				catch(Exception ex){
					
					ex.printStackTrace();
					response.sendRedirect("accessrightsadmin.jsp?success=3");
					
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
