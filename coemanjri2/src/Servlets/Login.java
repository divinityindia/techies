/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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

import Model.LoginDao;
import Servlets.Login;

/**
 *
 * @author admin
 */
public class Login extends HttpServlet {
   
	private static final long serialVersionUID = -1089784141648562144L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            
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
                	session.setAttribute("userid", result[2]);
                	session.setAttribute("cat", "admin");
                    response.sendRedirect("erp/admin/admin.jsp");
                }
                else if (result[1].equals("student"))
                {
                	session.setAttribute("userid", result[2]);
                	session.setAttribute("cat", "student");
                    response.sendRedirect("erp/student/student.jsp");
				}
                else if (result[1].equals("parent"))
                {
                	session.setAttribute("userid", result[2]);
                	session.setAttribute("cat", "parent");
                    response.sendRedirect("erp/parent/parent.jsp");
				}
                else if (result[1].equals("teacher"))
                {
                	session.setAttribute("userid", result[2]);
                	session.setAttribute("cat", "teacher");
                    response.sendRedirect("erp/teacher/teacher.jsp");
				}
               else
                {
                    session.setAttribute("tableID", result[1]);
                    session.setAttribute("cat", "table");
//                    response.sendRedirect("user/emp.jsp");
                    response.sendRedirect("userstaff/userstaff.jsp");
                }
            }
            
            else
            {
            	request.setAttribute("errorMessage", result[1]);
            	request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
            
        
        } catch (NamingException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    }
