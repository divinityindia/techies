/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import javax.naming.NamingException;

import Bean.AccessBean;
import Com.DBConnection;
import Com.MD5;

/**
 *
 * @author admin
 */
public class LoginDao {
     public HashMap<String, Object> authenticateUser(String uname,String pass) throws NamingException, SQLException
     {
        HashMap<String, Object> m=new HashMap<>();
    	Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String userNameDB = "";
        String passwordDB = "";
      
        String category = "";
        String id = "";
        String deptid="";
        
        try
        {
           con = DBConnection.createconnection();
           pst=con.prepareStatement("select * from users where username=?");
           pst.setString(1, uname);	
           rs=pst.executeQuery();

            while(rs.next()) 
            {
             userNameDB = rs.getString("username"); 
             passwordDB = rs.getString("password");
             category = rs.getString("category");
             id = rs.getString("userid");
             deptid=rs.getString("deptid");
             
            }
            
            if(uname.equals(userNameDB) && passwordDB.equals(new MD5().getpass(pass)))
            {
                AccessBean bean=AccessDao.getAccessRights(Integer.parseInt(id));
            	m.put("status", "SUCCESS");
                m.put("category", category);
                m.put("userid", id);
                m.put("usernamedb", userNameDB);
                m.put("deptid", deptid);
                m.put("accessrights", bean);
                pst.close();
                rs.close();
                con.close();
                return m; 
            }
            else
            {
            	m.put("status", "ERROR");
            	m.put("message", "Invalid user credentials!");
            	pst.close();
                rs.close();
                con.close();
            	return m;
            }
        }
        catch(Exception e)
        {
        	
        	e.printStackTrace();
        	
            
        }
        finally {
        	try{
        		pst.close();
                rs.close();
                con.close();
               }catch(Exception e1){}
        	
        	
		}
        m.put("status", "ERROR");
    	m.put("message", "Connection Error, Please try after sometime!");
    	return m;
        
    }
     
     public HashMap<String, String> authenticateUserForChange(String cusername,String cpassword) throws NamingException, SQLException
     {
        HashMap<String, String> m=new HashMap<>();
    	Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String userNameDB = "";
        String passwordDB = "";
      
        try
        {
           con = DBConnection.createconnection();
           pst=con.prepareStatement("select * from users where username=?");
           pst.setString(1, cusername);	
           rs=pst.executeQuery();

            while(rs.next()) 
            {
             userNameDB = rs.getString("username"); 
             passwordDB = rs.getString("password");
            }
            
            if(cusername.equals(userNameDB) && passwordDB.equals(new MD5().getpass(cpassword)))
            {
            	m.put("status", "SUCCESS");
            	pst.close();
                rs.close();
                con.close();
                return m; 
            }
            else
            {
            	m.put("status", "ERROR");
            	m.put("message", "Invalid user credentials!");
            	pst.close();
                rs.close();
                con.close();
            	return m;
            }
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        finally {
        	try{
            	pst.close();
                rs.close();
                con.close();
               }catch(Exception e1){}
		}
        m.put("status", "ERROR");
    	m.put("message", "Connection Error, Please try after sometime!");
    	return m;
    } 
}
