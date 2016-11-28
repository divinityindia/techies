/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.EditStudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class GetBranchCode extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(true);
        try {
            
            EditStudentDao dao=new EditStudentDao();
            ArrayList<String[]> list=dao.getbranchcode();
            request.setAttribute("branchlist", list);
            //out.println(list.size());
            request.getRequestDispatcher("branchcode.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GetBranchCode.class.getName()).log(Level.SEVERE, null, ex);
        }
             
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }


}
