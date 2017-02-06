/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.DBConnection;
import com.MD5;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import javax.naming.NamingException;

/**
 *
 * @author divinity
 */
public class LoginDao {
    public String authenticateUser(String uname,String pass,String cat) throws NamingException, NoSuchAlgorithmException, UnsupportedEncodingException, SQLException
    {
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";
        String[] result=new String[4];
        try
        {
           con = DBConnection.createConnection();
           statement = con.createStatement();
           resultSet = statement.executeQuery("select * from login"+cat+" where username='"+uname+"'");

            while(resultSet.next())
            {
             userNameDB = resultSet.getString("username");
             passwordDB = resultSet.getString("password");
            }
            statement.close();resultSet.close();con.close();
            if(uname.equals(userNameDB) && passwordDB.equals(new MD5().getpass(pass)))
            {

                return "SUCCESS";
            }
        }
        catch(Exception e)
        {
           try{
            con.close();
           }catch(Exception e1){}

           return String.valueOf(e);
        }
        return "Invalid user credentials !!! ";
    }



}
