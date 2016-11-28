/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.CreateUserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class UserTypeList extends HttpServlet {



    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();  
       // HttpSession session = request.getSession(true); 
        
        try
        {
            CreateUserDao dao=new CreateUserDao();
            
            ArrayList<String[]> list=dao.fetchusertype();
            request.setAttribute("list", list); 
            request.getRequestDispatcher("createuser.jsp").forward(request, response);
            
            
        }
        catch (Exception e){out.print(e);}
        
    }
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
   
}
