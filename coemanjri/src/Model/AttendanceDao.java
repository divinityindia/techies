/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Bean.AttendanceBean;
import Com.DBConnection;
import Com.dateParse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class AttendanceDao {
    public String getTodayAttendance(AttendanceBean bean) throws NamingException, ParseException{
        
        String list = new String();
        try{
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        String id=bean.getId();
        String studentid=bean.getStudentid();
        String date=bean.getDate();
        String status=bean.getStatus();
        con=DBConnection.createconnection();
        stmt=con.createStatement();
        String sql="insert into attendance (id,studentid,date,status)values('"+id+"','"+studentid+"','"+dateParse.getMysqlDate(date)+"','"+status+"')";
        stmt.executeUpdate(sql);
         stmt.close();con.close();
                return "SUCCESS"; 
        }catch(SQLException e){
             
            return String.valueOf(e);
        }
        
    
    
    }
}
