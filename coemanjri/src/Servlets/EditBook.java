/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Bean.AddBookBean;
import Model.EditBookDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class EditBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
             HttpSession session = request.getSession(true);
             EditBookDao dao=new EditBookDao();
             ArrayList<String[]> list=dao.getbooktitleandauthor();
             request.setAttribute("authorname", list); 
//             for(int i =0;i<list.size();i++){
//              out.println("val1="+list.get(i)[0]+" val2="+list.get(i)[1]);
//             }
//            
             request.getRequestDispatcher("editbook.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
    }

   
}
