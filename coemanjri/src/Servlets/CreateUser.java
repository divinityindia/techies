/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.CreateUserBean;
import Model.CreateUserDao;
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
public class CreateUser extends HttpServlet {

   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        
         PrintWriter out = response.getWriter();  
        HttpSession session = request.getSession(true); 
     
        String user=request.getParameter("username");
        String pass=request.getParameter("password");
        String cate=request.getParameter("userTypeName");
        String dept=request.getParameter("department");
        
         CreateUserBean bean= new CreateUserBean();
         
         bean.setUserName(user);
         bean.setPassword(pass);
         bean.setCategory(cate);
         bean.setDepartment(dept);
           CreateUserDao dao=new CreateUserDao();
            String result=dao.creatUser(bean);
            out.print(result);
            if(result.equals("SUCCESS"))
            {
                session.setAttribute("msg", "SUCCESS");
                response.sendRedirect("UserTypeList");
                
            }else{
                session.setAttribute("msg", "ERROR");
                response.sendRedirect("UserTypeList");
            }

       
       
    }

  

}
