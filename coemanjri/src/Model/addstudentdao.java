/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Bean.addstudent;
import Com.DBConnection;
import Com.dateParse;
import Servlets.studentlist;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class addstudentdao {
    public String addstudent(addstudent bean) throws SQLException, NamingException{
        
        String name=bean.getName();
        String prnno=bean.getPrnno();
        String admissiondate=bean.getAdmissiondate();
        String admissionyear=bean.getAdmissionyear();
       // String passoutyear=bean.getPassoutyear();
       // String passoutdate=bean.getPassoutdate();
        String branchname=bean.getBranchname();
        String gender=bean.getGender();
        String city=bean.getCity();
        String company=bean.getCompany();
        String contactno=bean.getContactno();
        String state=bean.getState();
        String email=bean.getEmail();
        String course=bean.getCourse();
          String semester=bean.getSemester();
         Connection con=null;
           Statement stmt=null;
           
             try
         {
               con = DBConnection.createconnection();
                String sql = null;
            try {
                sql = "insert into student(name,prnno,admissiondate,admissionyear,branchname,gender,company,city,state,contactno,email,course,semester)values('"+name+"','"+prnno+"','"+dateParse.getMysqlDate(admissiondate)+"','"+admissionyear+"','"+branchname+"','"+gender+"','"+company+"','"+city+"','"+state+"','"+contactno+"','"+email+"','"+course+"','"+semester+"')";
            } catch (ParseException ex) {
                Logger.getLogger(addstudentdao.class.getName()).log(Level.SEVERE, null, ex);
            }
                stmt = con.createStatement(); 
                  stmt.executeUpdate(sql); 
        
                stmt.close();con.close();
                return "SUCCESS"; 
         }
   catch(SQLException e)
        {
             con.close();
            return String.valueOf(e);
             //return "ERROR";
        }
     
       
        
        
        
    
    }
    
//    public ArrayList<String[]> getStudent(addstudent bean) throws NamingException{
//       
//    
//    }

    public ArrayList<String[]> getStudent(String course,String semester,String branchname) {
        //To change body of generated methods, choose Tools | Templates.
        
        
        ArrayList<String[]> studentlist = new ArrayList<String[]>();
        Connection con = null;
        Statement stmt1 = null;
        ResultSet rs1 = null;
        try {
        
            con = DBConnection.createconnection();
            stmt1 = con.createStatement();
            String sql = "select * from student where course='"+course+"' and semester='"+semester+"' and branchname='"+branchname+"' ";//where course='"+bean.getCourse()+"' and '"+bean.getSemester()+"'
            rs1 = stmt1.executeQuery(sql); 
            String[] info;
            while(rs1.next()){
              info=new String[1];
              info[0]=rs1.getString(2);
              
               studentlist.add(info);
              
            }
             stmt1.close();
            rs1.close();
            con.close();
            
            
        } 
        catch(Exception e)
         {
             //out.print(e);
            //return String.valueOf(e);
           
         }
         return studentlist;
    
    }
}
