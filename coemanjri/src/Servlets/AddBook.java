/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.AddBookBean;
import Model.AddBookDao;
import Model.CreateUserTypeDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.HashMap;
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
public class AddBook extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
             HttpSession session = request.getSession(true);
             CreateUserTypeDao dao=new CreateUserTypeDao();
             HashMap<String,String> m=dao.getBranch();
             request.setAttribute("branchname", m); 
             request.getRequestDispatcher("addbook.jsp").forward(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              PrintWriter out =response.getWriter();
              HttpSession session = request.getSession(true);
        try {
           
            String name=request.getParameter("booktitle");
            String author=request.getParameter("author");
            String publisher=request.getParameter("publisher");
            String booknumber=request.getParameter("booknumber");
            String accountnumber=request.getParameter("accountnumber");
            String source=request.getParameter("source");
            String branchname=request.getParameter("branchname");
            String pages=request.getParameter("pages");
            String publicationdate=request.getParameter("publicationdate");
            String price=request.getParameter("price");
            AddBookBean bean=new AddBookBean();
            bean.setBooktitle(name);
            bean.setAuthor(author);
            bean.setPublisher(publisher);
            bean.setBookno(booknumber);
            bean.setAccountno(accountnumber);
            bean.setSource(source);
            bean.setDepartment(branchname);
            bean.setPages(pages);
            bean.setPublicationyear(publicationdate);
            bean.setPrice(price);
            AddBookDao dao = new AddBookDao();
            String result = dao.savebookdetails(bean);
            //out.println(resultMsg);
            if(result.equals("SUCCESS"))
            {
                session.setAttribute("msg1", result);
            }else{
                session.setAttribute("msg1", "ERROR");
            }
            response.sendRedirect("addbook.jsp");
        } 
         catch (Exception e) {
           out.println(e);
        } 
      
    }

   
  
}
