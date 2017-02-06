package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Model.GalleryDao;

/**
 * Servlet implementation class AddClass
 */

public class CheckGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckGallery() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
					ArrayList<String> list=GalleryDao.checkGallery();
					String json = new Gson().toJson(list);
					response.setContentType("application/json");
					response.getWriter().write(json);
			}

}
