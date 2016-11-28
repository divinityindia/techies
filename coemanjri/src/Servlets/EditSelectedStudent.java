/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.addstudent;
import Model.EditStudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
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
public class EditSelectedStudent extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             
               PrintWriter out = response.getWriter();
                HttpSession session = request.getSession(true);
        try {
            
            String branch=request.getParameter("studentname");
            String studentname=request.getParameter("studentitle");
            EditStudentDao dao=new EditStudentDao();
            addstudent bean=new addstudent();   
            bean.setStudentid(request.getParameter("studentid"));
            bean.setName(request.getParameter("name"));
            bean.setPrnno(request.getParameter("prnno"));
            bean.setAdmissionyear(request.getParameter("admissionyear"));
            bean.setBranchname(request.getParameter("branchname"));
            bean.setPassoutyear(request.getParameter("passoutyear"));
            bean.setAdmissiondate(request.getParameter("admissiondate"));
            bean.setPassoutdate(request.getParameter("passoutdate"));
            bean.setGender(request.getParameter("gender"));
            bean.setCompany(request.getParameter("company"));
            bean.setCity(request.getParameter("city"));
            bean.setState(request.getParameter("state"));
            bean.setContactno(request.getParameter("contactno"));
            bean.setEmail(request.getParameter("email"));
            bean.setCourse(request.getParameter("course"));
            bean.setSemester(request.getParameter("semester"));
            String [] result=dao.getSelectedstudent(branch, studentname);
            request.setAttribute("msg", result);
            request.getRequestDispatcher("editselectedstudent.jsp").forward(request, response);
        } catch (NamingException ex) {
            Logger.getLogger(EditSelectedStudent.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditSelectedStudent.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(EditSelectedStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    

}
