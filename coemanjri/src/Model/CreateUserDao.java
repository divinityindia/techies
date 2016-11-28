/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Bean.CreateUserBean;
import Com.DBConnection;
import Com.MD5;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class CreateUserDao {
     public String creatUser(CreateUserBean bean){
        Connection con = null;
        Statement statement = null;
        try{
            MD5 m=new MD5();
            String pw=m.getpass(bean.getPassword());
            
            
           String sql1="insert into login ( userName,password,category,department)values('"+bean.getUserName()+"','"+pw+"','"+bean.getCategory()+"','staff')";
           con = DBConnection.createconnection();
           statement = con.createStatement(); 
           statement.executeUpdate(sql1); 
           statement.close();con.close();
           return "SUCCESS";
            
        }
        catch(Exception e)
        {
            try{
            con.close();
           }catch(Exception e1){}
            return String.valueOf(e);
        }
        
        
        
    }
     
     public ArrayList<String[]> fetchusertype(){
      ArrayList<String[]> list=new ArrayList<String[]>();
        String[] arr;
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
           String sql1="select userTypeName from usertype ";
           con = DBConnection.createconnection();
           statement = con.createStatement(); 
           rs=statement.executeQuery(sql1);
           while(rs.next())
           {
               arr=new String[2];
              // arr[0]=rs.getString("id");
               arr[0]=rs.getString("userTypeName");
               list.add(arr);
           }
           statement.close();rs.close();con.close();
           return list;
            
        }
        catch(Exception e)
        {
            try{
            con.close();
           }catch(Exception e1){}
//            return String.valueOf(e);
            return null;
        }
     
     }
    
}
