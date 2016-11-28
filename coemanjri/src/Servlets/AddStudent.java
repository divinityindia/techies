/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.addstudent;
import Model.CreateUserTypeDao;
import Model.addstudentdao;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class AddStudent extends HttpServlet {

  
  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
             HttpSession session = request.getSession(true);
             CreateUserTypeDao dao=new CreateUserTypeDao();
             HashMap<String,String> m=dao.getBranch();
             request.setAttribute("branchname", m); 
             request.getRequestDispatcher("addstudent.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out =response.getWriter();
        try {
            
            String name=request.getParameter("name");
            String prnno=request.getParameter("prnno");
            String admissiondate=request.getParameter("admissiondate");
            String admisionyear=request.getParameter("admissionyear");
           // String passoutyear=request.getParameter("passoutyear");
           // String passoutdate=request.getParameter("passoutdate");
            String branchname=request.getParameter("branchname");
            String gender=request.getParameter("gender");
            String company=request.getParameter("company");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String contactno=request.getParameter("contactno");
            String email=request.getParameter("email");
            String course=request.getParameter("course");
            String semester=request.getParameter("semester");
            addstudent bean=new addstudent();
            bean.setName(name);
            bean.setPrnno(prnno);
            bean.setAdmissiondate(admissiondate);
            bean.setAdmissionyear(admisionyear);
        //    bean.setPassoutdate(passoutdate);
          //  bean.setPassoutyear(passoutyear);
            bean.setBranchname(branchname);
            bean.setGender(gender);
            bean.setCompany(company);
            bean.setCity(city);
            bean.setState(state);
            bean.setContactno(contactno);
            bean.setEmail(email);
            bean.setCourse(course);
            bean.setSemester(semester);
            addstudentdao dao=new addstudentdao();
            String resultMsg = dao.addstudent(bean);
            out.print(resultMsg);
            response.sendRedirect("AddStudent?success=1");
        } catch (SQLException ex) {
            out.print(ex);
        } catch (NamingException ex) {
            Logger.getLogger(AddStudent.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
        
    }

   
  
}
