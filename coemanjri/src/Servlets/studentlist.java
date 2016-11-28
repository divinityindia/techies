/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.addstudent;
import Model.addstudentdao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class studentlist extends HttpServlet {



  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=response.getWriter();
         try{
         addstudent bean=null;
         String course=request.getParameter("course");
         String semester=request.getParameter("semester");
         String branchname=request.getParameter("branchname");
        addstudentdao dao = new addstudentdao();
        
        ArrayList<String[]> studentlist = dao.getStudent(course, semester,branchname);
        
         request.setAttribute("studentlist", studentlist);
         
//         out.println("size= "+studentlist.size());
//         for(int i=0;i<studentlist.size();i++){
//         out.println(studentlist.get(i));
//         }
         //out.print(studentlist);
         request.getRequestDispatcher("attendance1.jsp").forward(request, response);
         }catch(Exception e){out.print(e);}
            
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       
    }

   
   
}
