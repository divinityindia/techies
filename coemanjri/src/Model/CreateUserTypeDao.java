/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Bean.CreateUserTypeBean;
import Com.DBConnection;
import Com.MD5;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

/**
 *
 * @author admin
 */
public class CreateUserTypeDao {
    public String creatUser(CreateUserTypeBean bean){
        Connection con = null;
        Statement statement = null;
        try{
            
           String sql1="insert into usertype ( userTypeName,description)values('"+bean.getUserTypeName()+"','"+bean.getDescription()+"')";
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
    
    public HashMap<String,String> getBranch(){
        HashMap<String,String> m = new HashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        String ID=null;
       try{
            String sql1="SELECT * from usertype order by userTypeName";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql1);
            while(rs.next())
            {
                m.put(rs.getString("id"), rs.getString("userTypeName"));
            }
            statement.close();rs.close();con.close();
            return m;
        }
        catch(Exception e)
        {
            try{
            con.close();
           }catch(Exception e1){}
            return null;
        }
    
    }
}
