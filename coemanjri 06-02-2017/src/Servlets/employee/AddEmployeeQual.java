package Servlets.employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.AccessBean;
import Model.employee.EmployeeDao;

/**
 * Servlet implementation class AddCourse
 */
public class AddEmployeeQual extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployeeQual() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		AccessBean bean=(AccessBean)session.getAttribute("right");
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("Administrator")&&bean.isAddemployee())
			{	int fid=0;
				HashMap<String, String> row=null;
				ArrayList<HashMap<String, String>> qual=new ArrayList<>();
				ArrayList<HashMap<String, String>> cert=new ArrayList<>();
				if(request.getParameter("fid")!=null)
				{
					fid=Integer.parseInt(request.getParameter("fid"));
				}
				
					if(request.getParameter("udegree")!=null)
					{
						row=new HashMap<>();
						
						row.put("fid", request.getParameter("fid"));
						row.put("qname", request.getParameter("qual1"));
						row.put("degree", request.getParameter("udegree"));
						row.put("spl", request.getParameter("uspl"));
						row.put("inst", request.getParameter("uinst"));
						row.put("univ", request.getParameter("uuniv"));
						row.put("pyr", request.getParameter("upyr"));
						row.put("per", request.getParameter("uper"));
						row.put("achiev", request.getParameter("uachiev"));
						qual.add(row);
					}
					
					if(request.getParameter("pdegree")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("qname", request.getParameter("qual2"));
						row.put("degree", request.getParameter("pdegree"));
						row.put("spl", request.getParameter("pspl"));
						row.put("inst", request.getParameter("pinst"));
						row.put("univ", request.getParameter("puniv"));
						row.put("pyr", request.getParameter("ppyr"));
						row.put("per", request.getParameter("pper"));
						row.put("achiev", request.getParameter("pachiev"));
						qual.add(row);
					}
					
					if(request.getParameter("ppdegree")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("qname", request.getParameter("qual3"));
						row.put("degree", request.getParameter("ppdegree"));
						row.put("spl", request.getParameter("ppspl"));
						row.put("inst", request.getParameter("ppinst"));
						row.put("univ", request.getParameter("ppuniv"));
						row.put("pyr", request.getParameter("pppyr"));
						row.put("per", request.getParameter("ppper"));
						row.put("achiev", request.getParameter("ppachiev"));
						qual.add(row);
					}
					
					if(request.getParameter("cert1")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname1"));
						row.put("cinst", request.getParameter("cinst1"));
						row.put("cduration", request.getParameter("cduration1"));
						row.put("ccontent", request.getParameter("ccontent1"));
						cert.add(row);
					}
					
					if(request.getParameter("cert2")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname2"));
						row.put("cinst", request.getParameter("cinst2"));
						row.put("cduration", request.getParameter("cduration2"));
						row.put("ccontent", request.getParameter("ccontent2"));
						cert.add(row);
					}
					
					if(request.getParameter("cert3")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname3"));
						row.put("cinst", request.getParameter("cinst3"));
						row.put("cduration", request.getParameter("cduration3"));
						row.put("ccontent", request.getParameter("ccontent3"));
						cert.add(row);
					}
					
					if(request.getParameter("cert4")!=null)
					{
						row=new HashMap<>();
						row.put("fid", request.getParameter("fid"));
						row.put("crsname", request.getParameter("crsname4"));
						row.put("cinst", request.getParameter("cinst4"));
						row.put("cduration", request.getParameter("cduration4"));
						row.put("ccontent", request.getParameter("ccontent4"));
						cert.add(row);
					}
					
					int result1[]=EmployeeDao.addQual(qual);
					int result2[]=EmployeeDao.addCert(cert);
					
					int qualsuccess=0;
					if(result1!=null)
					{
						qualsuccess=1;
					}
					int certsuccess=0;
					if(result2!=null)
					{
						certsuccess=1;
					}
					
					response.sendRedirect("addemployee.jsp?qualsuccess="+qualsuccess+"&certsuccess="+certsuccess+"&id="+fid);
				
				
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
