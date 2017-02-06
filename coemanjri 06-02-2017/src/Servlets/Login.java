/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
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

import Model.LoginDao;

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
            HashMap<String, Object> m=dao.authenticateUser(user, pass);
            
            if(m.get("status").equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
            {
                session.setAttribute("username", user);
                if(m.get("category").equals("Administrator"))
                {
                	session.setAttribute("userid", m.get("userid"));
                	session.setAttribute("cat", m.get("category"));
                	session.setAttribute("deptid", m.get("deptid"));
                	session.setAttribute("right", m.get("accessrights"));
                    response.sendRedirect("erp/admin/admin.jsp");
                }
                else if (m.get("category").equals("student"))
                {
                	session.setAttribute("userid", m.get("userid"));
                	session.setAttribute("cat", "student");
                    response.sendRedirect("erp/student/student.jsp");
				}
                else if (m.get("category").equals("parent"))
                {
                	session.setAttribute("userid", m.get("userid"));
                	session.setAttribute("cat", "parent");
                    response.sendRedirect("erp/parent/parent.jsp");
				}
                else if (m.get("category").equals("teacher"))
                {
                	session.setAttribute("userid", m.get("userid"));
                	session.setAttribute("cat", "teacher");
                    response.sendRedirect("erp/teacher/teacher.jsp");
				}
               else
                {
            	   session.setAttribute("userid", m.get("userid"));
                   session.setAttribute("cat", "table");
                   response.sendRedirect("userstaff/userstaff.jsp");
                }
            }
            
            else
            {
            	request.setAttribute("errorMessage", m.get("message"));
            	request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
            
        
        } catch (NamingException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    }
