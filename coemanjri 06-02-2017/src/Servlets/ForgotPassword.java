package Servlets;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.json.simple.JSONObject;

import Bean.AccessBean;
import Bean.UserBean;
import Model.AddUserDao;
import mail.Mail;



public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try
    	{
    		String username=request.getParameter("fusername");
    		HashMap<String, String> m=AddUserDao.getSquestion(username);
    		JSONObject json = new JSONObject();
            json.putAll(m);
            
            response.setContentType("application/json");
            response.getWriter().write(json.toString());
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
    	{
    		String username=request.getParameter("fusername");
    		String answer=request.getParameter("answer");
    		HashMap<String, String> m=AddUserDao.getSquestion(username);
    		if(answer.equals(m.get("answer")))
    		{
    			char[] possibleCharacters = (new String("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~`!@#$%^&*()-_=+[{]}\\|;:\'\",<.>/?")).toCharArray();
    			String randomStr = RandomStringUtils.random( 6, 0, possibleCharacters.length-1, false, false, possibleCharacters, new SecureRandom() );
    			System.out.println( randomStr );
    			int result=AddUserDao.changeAdminPassword(Integer.parseInt(m.get("userid")), randomStr);
    			if(result==1)
    			{
    				int mailResult=Mail.sendMail(username, randomStr);
        			JSONObject json = new JSONObject();
        			if(mailResult==1)
        			{
        				json.put("status", "SUCCESS");
            			response.setContentType("application/json");
            			response.getWriter().write(json.toString());
        			}
        			else
        			{
        				json.put("status", "SUCCESS1");
            			response.setContentType("application/json");
            			response.getWriter().write(json.toString());
        			}
        			
    			}
    			else
    			{
        			JSONObject json = new JSONObject();
        			json.put("status", "ERROR1");
        			response.setContentType("application/json");
        			response.getWriter().write(json.toString());
    			}
    		}
    		else
    		{
    			System.out.println("Wrong answer");
    			JSONObject json = new JSONObject();
    			json.put("status", "ERROR");
    			response.setContentType("application/json");
    			response.getWriter().write(json.toString());
    		}
    		
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
	
	}

}
