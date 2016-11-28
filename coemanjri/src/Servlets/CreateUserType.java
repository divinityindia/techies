/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.CreateUserTypeBean;
import Model.CreateUserTypeDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class CreateUserType extends HttpServlet {

   


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        
         PrintWriter out = response.getWriter();  
        HttpSession session = request.getSession(true); 
     
        String user=request.getParameter("usertypename");
        String pass=request.getParameter("description");
       
        
       CreateUserTypeBean bean= new CreateUserTypeBean();
         
         bean.setUserTypeName(user);
         bean.setDescription(pass);
         
          CreateUserTypeDao dao = new CreateUserTypeDao();
            String result=dao.creatUser(bean);
            out.print(result);
            if(result.equals("SUCCESS"))
            {
                session.setAttribute("msg", "SUCCESS");
                response.sendRedirect("createusertype.jsp");
                
            }else{
                session.setAttribute("msg", "ERROR");
                response.sendRedirect("createusertype.jsp");
            }

       
       
    }
   
   
}
