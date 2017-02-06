/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import Model.GetListItemDao;

/**
 *
 * @author admin
 */
public class ShowDropDownSection extends HttpServlet {

 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
                HashMap<String, String> sectionList=new HashMap<>();
                sectionList=GetListItemDao.getSectionList();
                JSONObject json = new JSONObject();
                json.putAll(sectionList);
               
                response.setContentType("application/json");
                response.getWriter().write(json.toString());

			} catch (Exception e) {
				e.printStackTrace();
			}
            
    }
}
