/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.EditBookDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
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
public class ShowDropDownBook extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(true);
        
        
            
            String cat=request.getParameter("authorname");
            try {
            EditBookDao dao=new EditBookDao();
            LinkedHashMap<String, String> m= dao.showdropdownbook(cat);
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
