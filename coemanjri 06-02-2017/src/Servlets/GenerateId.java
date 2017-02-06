package Servlets;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.DBConnection;
import Model.AddParentDao;
import Model.GetListItemDao;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 * Servlet implementation class DemoPDfGenerator
 */
@WebServlet("/admin/demopdf")
public class GenerateId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenerateId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session.getAttribute("cat")!=null)
		{
			if(session.getAttribute("cat").equals("admin"))
			{
				try {
					
					int studentId=Integer.parseInt(request.getParameter("studentid"));
					String rollno=request.getParameter("rollno");
			    	String studentName=request.getParameter("studentname");
			    	String dateofbirth=request.getParameter("dateofbirth");
			    	String gender=request.getParameter("gender");
			    	String bloodgroup=request.getParameter("bloodgroup");
			    	String address=request.getParameter("address");
			    	String city=request.getParameter("city");
			    	String state=request.getParameter("state");
			    	String phone=request.getParameter("phone");
			    	String courseId=request.getParameter("courseid");
			    	String classId=request.getParameter("classid");
			    	String sectionId=request.getParameter("sectionid");
			    	String branchId=request.getParameter("branchid");
			    	String semester=request.getParameter("semester");
			    	String emergencyContact=AddParentDao.emergContactNo(studentId);
			    	
			    	HashMap<String, String> classes=GetListItemDao.getClassList();
			    	HashMap<String, String> sections=GetListItemDao.getSectionList();
			    	HashMap<String, String> courses=GetListItemDao.getCourseList();
			    	HashMap<String, String> branches=GetListItemDao.getBranchList();
			    	
			    	Map<String,Object> parameterMap=new HashMap<String,Object>();
			    	parameterMap.put("studentid", studentId);
			    	parameterMap.put("class",classes.get(classId));
			    	//parameterMap.put("course", courses.get(courseId));
			    	parameterMap.put("section", sections.get(sectionId));
			    	parameterMap.put("branch", branches.get(branchId));
			    	parameterMap.put("emergencyno", emergencyContact);
			    	OutputStream outputStream=response.getOutputStream();
					response.setContentType("application/pdf");
					try {
						Connection con=DBConnection.createconnection();
						ServletContext context = getServletContext();
						String report = context.getRealPath("/WEB-INF/reports/idcard.jrxml");
						JasperReport jasperReport = null;
			            JasperDesign jasperDesign = null;
						try {
							jasperDesign = JRXmlLoader.load(report);
							jasperReport = JasperCompileManager.compileReport(report);
				            byte[] byteStream = JasperRunManager.runReportToPdf(jasperReport,parameterMap,con);
				            OutputStream outStream = response.getOutputStream();
				            response.setContentType("application/pdf");
				            
				            String headerKey = "Content-Disposition";
				            String headerValue = String.format("attachment; filename=\"%s\"",studentName+".pdf");
				            response.setHeader(headerKey, headerValue);
				            response.setContentLength(byteStream.length);
				            outStream.write(byteStream,0,byteStream.length); 
				            outputStream.flush();
				            outputStream.close();
						} catch (JRException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
			                                       
			             
						
//						JasperReport jr=JasperCompileManager.compileReport(report);
//						JasperPrint jasperPrint=JasperFillManager.fillReport(jr,parametersMap,con);
//						OutputStream outputStream=response.getOutputStream();
//						JasperExportManager.exportReportToPdfStream(jasperPrint,outputStream);
						
						
//						JasperReport jr=JasperCompileManager.compileReport(report);
//						byte[] byteStream=JasperRunManager.runReportToPdf(jr,parametersMap,con);
//						response.setHeader("Content-Disposition", "inline, filename=myReport.pdf");
//						response.setContentType("application/pdf");
//						response.setContentLength(byteStream.length);
//						outputStream.write(byteStream,0,byteStream.length);
//						outputStream.flush();
//						outputStream.close();
						
					} catch (NamingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (Exception e) {
					e.printStackTrace();
					response.sendRedirect("showstudentlist?success=3");
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
