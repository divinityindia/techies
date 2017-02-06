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
public class ShowDropDownBranch extends HttpServlet {

 
   
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
                HashMap<String, String> branchList=new HashMap<>();
                branchList=GetListItemDao.getBranchList();
                JSONObject json = new JSONObject();
                json.putAll(branchList);
               
                response.setContentType("application/json");
                response.getWriter().write(json.toString());

			} catch (Exception e) {
				e.printStackTrace();
			}
            
    }
}
