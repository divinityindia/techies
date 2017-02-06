/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.EditBookDao;
import Servlets.GetAllBook;

/**
 *
 * @author admin
 */
public class GetAllBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(true);
            EditBookDao dao=new EditBookDao();
            ArrayList<String[]> list=dao.getAllBook();
            request.setAttribute("bookname", list);
            request.getRequestDispatcher("getallbook.jsp").forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(GetAllBook.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

   

}
