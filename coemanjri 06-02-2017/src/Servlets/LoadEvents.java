package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Bean.EventBean;
import Model.GetListItemDao;

/**
 * Servlet implementation class Count
 */

public class LoadEvents extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadEvents() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
			if(request.getParameter("eventid")==null)
			{
				String branchName=request.getParameter("branchname");
				if(branchName==null)
				{
					ArrayList<EventBean> eventList=GetListItemDao.getEventListForIndex();
					ArrayList<EventBean> beans=new ArrayList<>();
					/*Date myDate = new Date();
					SimpleDateFormat dmyFormat = new SimpleDateFormat("yyyy-MM-dd");
					String dmy = dmyFormat.format(myDate);
					Date dateobj=dmyFormat.parse(dmy);*/
					for (EventBean eventBean : eventList) {
						
						if(eventBean.getStatus().equals("Yes"))
						{
							beans.add(eventBean);
							
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
				else
				{
					ArrayList<EventBean> eventList=GetListItemDao.getEventListForBranch(branchName);
					ArrayList<EventBean> beans=new ArrayList<>();
					/*Date myDate = new Date();
					SimpleDateFormat dmyFormat = new SimpleDateFormat("yyyy-MM-dd");
					String dmy = dmyFormat.format(myDate);
					Date dateobj=dmyFormat.parse(dmy);*/
					for (EventBean eventBean : eventList) {
						
						if(eventBean.getStatus().equals("Yes"))
						{
							beans.add(eventBean);
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
				
				//request.setAttribute("eventlist", eventBeans);
			}
			else
			{
				int eventID=Integer.parseInt(request.getParameter("eventid"));
				response.sendRedirect("event.jsp?eventid="+eventID);			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
