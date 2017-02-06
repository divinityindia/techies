package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.NewsBean;
import Model.GetListItemDao;

/**
 * Servlet implementation class Count
 */

public class LoadNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
			if(request.getParameter("newsid")==null)
			{
				String branchName=request.getParameter("branchname");
				if(branchName==null)
				{
					ArrayList<NewsBean> newsList=GetListItemDao.getNewsListForIndex();
					ArrayList<NewsBean> beans=new ArrayList<>();
					/*Date myDate = new Date();
					SimpleDateFormat dmyFormat = new SimpleDateFormat("yyyy-MM-dd");
					String dmy = dmyFormat.format(myDate);
					Date dateobj=dmyFormat.parse(dmy);*/
					for (NewsBean newsBean : newsList) {
						
						if(newsBean.getStatus().equals("Yes"))
						{
							beans.add(newsBean);
							
							/*if(eventBean.getEnddate()==null)//For Datewise show of events
							{
								
								if(dateobj.compareTo(eventBean.getStartdate())>0||dateobj.compareTo(eventBean.getStartdate())==0)
								{
									beans.add(eventBean);
								}
							}
							else
							{
								if(dateobj.compareTo(eventBean.getStartdate())>0||dateobj.compareTo(eventBean.getStartdate())==0)
								{
									if(dateobj.compareTo(eventBean.getEnddate())==0||dateobj.compareTo(eventBean.getEnddate())<0)
									{
										beans.add(eventBean);
									}
									
								}
			
							}*/
						}
						
						
					}
					String json = new Gson().toJson(beans);
			        response.setContentType("application/json");
			        response.getWriter().write(json);
				}
			}
			else
			{
				int newsID=Integer.parseInt(request.getParameter("newsid"));
				response.sendRedirect("news.jsp?newsid="+newsID);			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
