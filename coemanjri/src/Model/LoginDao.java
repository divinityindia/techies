/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Com.DBConnection;
import Com.MD5;
import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class LoginDao {
     public String[] authenticateUser(String uname,String pass) throws NamingException, SQLException
    {
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";
      // String tableNo = "";
        String category = "";
        String ID = "";
        String[] arr;

        try
        {
           con = DBConnection.createconnection();
           statement = con.createStatement(); 
           resultSet = statement.executeQuery("select * from login where userName='"+uname+"'"); 

            while(resultSet.next()) 
            {
             userNameDB = resultSet.getString("userName"); 
             passwordDB = resultSet.getString("password");
            // tableNo = resultSet.getString("tableName");
             category = resultSet.getString("category");
             ID = resultSet.getString("ID");
            }
            statement.close();resultSet.close();con.close();
            if(uname.equals(userNameDB) && passwordDB.equals(new MD5().getpass(pass)))
            {
                arr=new String[3];
                arr[0]="SUCCESS";
               // arr[1]=tableNo;
                arr[1]=category;
                arr[2]=ID;
                return arr; 
            }
        }
        catch(Exception e)
        {
           try{
            con.close();
           }catch(Exception e1){}
            arr=new String[2];
            arr[0]="ERROR";arr[1]=String.valueOf(e);
            return arr;
        }
        arr=new String[2];
        arr[0]="ERROR";arr[1]="Invalid user credentials";
        return arr;
    }
    
}
