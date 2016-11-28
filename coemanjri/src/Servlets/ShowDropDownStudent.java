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
import java.util.HashMap;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class ShowDropDownStudent extends HttpServlet {

 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(true);
        
        
            
            String cat=request.getParameter("studentname");
            try {
            EditStudentDao dao=new EditStudentDao();
            LinkedHashMap<String, String> m= dao.showdropdownstudent(cat);
            for (HashMap.Entry<String, String> entry : m.entrySet()) 
            {
                 out.print("<option>"+entry.getValue()+"</option>");
            }
            out.print(cat);
        } 
            catch(Exception e)
        {
            out.print(e);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   

}
