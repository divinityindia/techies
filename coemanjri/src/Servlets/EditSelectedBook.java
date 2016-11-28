/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.AddBookBean;
import Com.dateParse;
import Model.EditBookDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class EditSelectedBook extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(true);
            
            String booktitle=request.getParameter("booktitle");
            String author=request.getParameter("authorname");
            //out.print(booktitle);
          //  out.print("author= "+author+" title="+ booktitle);
            EditBookDao dao =new EditBookDao();
           AddBookBean bean = new AddBookBean();
            bean.setBookid(request.getParameter("bookid"));
            bean.setBooktitle(request.getParameter("booktitle"));
            bean.setAuthor(request.getParameter("author"));
            bean.setPublisher(request.getParameter("publisher"));
            bean.setBookno(request.getParameter("booknumber"));
            bean.setAccountno(request.getParameter("accountnumber"));
            bean.setSource(request.getParameter("source"));
            bean.setDepartment(request.getParameter("branchname"));
            bean.setPages(request.getParameter("pages"));
            bean.setPublicationyear(request.getParameter("publicationdate"));
            bean.setPrice(request.getParameter("price"));
            
            String[] result=dao.getSelectedBook(booktitle, author);
//            
           // out.print(result.length);
            request.setAttribute("msg", result);
            // out.print(booktitle+author);
            //response.sendRedirect("editselectedbook.jsp");
           request.getRequestDispatcher("editselectedbook.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(EditSelectedBook.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    }

    
}
