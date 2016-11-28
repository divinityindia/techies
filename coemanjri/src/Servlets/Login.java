/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(true);
            String user=request.getParameter("userName1");
            String pass=request.getParameter("passWord1");
            LoginDao dao=new LoginDao();
            String[] result=dao.authenticateUser(user, pass);
            //out.print(result[0]+" "+result[1]+" "+result[2]);
            if(result[0].equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
            {
                session.setAttribute("user", result[1]);
                if(result[1].equals("admin"))
                {
                    session.setAttribute("cat", "admin");
                    response.sendRedirect("admin/admin.jsp");
                }
               else
                {
                    session.setAttribute("tableID", result[1]);
                    session.setAttribute("cat", "table");
//                    response.sendRedirect("user/emp.jsp");
                    response.sendRedirect("userstaff/userstaff.jsp");
                }
            }   } catch (NamingException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }


}
    }
