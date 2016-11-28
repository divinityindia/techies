/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.EditBookDao;
import Model.EditStudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class EditStudent extends HttpServlet {

   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
             HttpSession session = request.getSession(true);
             EditStudentDao dao=new EditStudentDao();
             ArrayList<String[]> list=dao.getbranchnameandstudent();
             request.setAttribute("studentname", list); 
//             for(int i =0;i<list.size();i++){
//              out.println("val1="+list.get(i)[0]+" val2="+list.get(i)[1]);
//             }
//            
             request.getRequestDispatcher("editstudent.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   

}
