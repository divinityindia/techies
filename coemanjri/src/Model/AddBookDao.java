/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Bean.AddBookBean;
import Com.DBConnection;
import Com.dateParse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class AddBookDao {
    public String savebookdetails(AddBookBean bean) throws NamingException, SQLException, ParseException{
        
            String name=bean.getBooktitle();
            String author=bean.getAuthor();
            String publisher=bean.getPublisher();
            String bookno=bean.getBookno();
            String accountno=bean.getAccountno();
            String publicyear=bean.getPublicationyear();
            String department=bean.getDepartment();
            String pages=bean.getPages();
            String source=bean.getSource();
            String price=bean.getPrice();
            Connection con=null;
            Statement stmt=null;
            con = DBConnection.createconnection();
            
         
            
             try
         {
               con = DBConnection.createconnection();
                
           
               String  sql = "insert into library(booktitle,author,publisher,bookno,accountno,publicationyear,branchname,pages,source,price)values('"+name+"','"+author+"','"+publisher+"','"+bookno+"','"+accountno+"','"+dateParse.getMysqlDate( publicyear)+"','"+department+"','"+pages+"','"+source+"','"+price+"')";
           
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
    
    
     public String saveEditbookdetails(AddBookBean bean) throws NamingException, SQLException, ParseException{
        

            Connection con=null;
            PreparedStatement stmt=null;
       
            con = DBConnection.createconnection();
         
            
             try
         {
               
                
           
               String  sql = "REPLACE into library (bookid,booktitle,author,publisher,bookno,accountno,publicationyear,branchname,pages,source,price)  values(?,?,?,?,?,?,?,?,?,?,?)";//,'?','?','?','?','?','?','?','?','?'
           
                  stmt = con.prepareStatement(sql);
                
                  stmt.setString(1, bean.getBookid());
                  stmt.setString(2, bean.getBooktitle());
                  stmt.setString(3, bean.getAuthor());
                  stmt.setString(4, bean.getPublisher());
                  stmt.setString(5, bean.getBookno());
                  stmt.setString(6, bean.getAccountno());
                  stmt.setString(7, dateParse.getMysqlDate(bean.getPublicationyear()));
                  stmt.setString(8, bean.getDepartment());
                  stmt.setString(9, bean.getPages());
                  stmt.setString(10, bean.getSource());
                  stmt.setString(11, bean.getPrice());
                  stmt.executeUpdate();
                  
                stmt.close();con.close();
                return "SUCCESS"; 
         }
   catch(SQLException e)
        {
             con.close();stmt.close();
            return String.valueOf(e);
             //return "ERROR";
        }
    }
    
    
        public HashMap<String, String> getsearchedBook(String val, String type)
    {   
        String criteria="";
        if(type.equals("TEXT")){criteria="booktitle like '"+val+"%'";}
        else if(type.equals("NO")){criteria="bookid='"+val+"'";}
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        HashMap<String, String> m = new HashMap<String,String>(); 
        try{
           String sql1="select * from library where "+criteria;
           con = DBConnection.createconnection();
           statement = con.createStatement(); 
           rs=statement.executeQuery(sql1);
           while(rs.next())
           {
              m.put(rs.getString("bookid"), rs.getString("booktitle"));
           }
           statement.close();rs.close();con.close();
           return m;
            
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
