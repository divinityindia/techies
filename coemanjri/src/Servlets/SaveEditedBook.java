/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.AddBookBean;
import Com.dateParse;
import Model.AddBookDao;
import Model.EditBookDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class SaveEditedBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out =response.getWriter();
        
        try {
            
            String bookid=request.getParameter("bookid");
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
            bean.setBookid(bookid);
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
            String resultMsg = dao.saveEditbookdetails(bean);
            out.println(resultMsg);
            response.sendRedirect("EditBook");
        } 
        catch(Exception e){out.println(e);}
    }

  
}
