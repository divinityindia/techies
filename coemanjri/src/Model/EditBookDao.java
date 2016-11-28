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
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class EditBookDao {
    public ArrayList<String[]> getbooktitleandauthor(){
          ArrayList<String[]> list = new ArrayList<>();
            Connection con = null;
            Statement stmt1 = null;
            ResultSet rs1 = null;
        try {
           
            con=DBConnection.createconnection();
            stmt1=con.createStatement();
            String sql="select * from library";
            rs1=stmt1.executeQuery(sql);
            String[] info;
            while(rs1.next()){
            info=new String[2];
            info[0]=rs1.getString(2);
            info[1]=rs1.getString(3);
             list.add(info);
            }
            stmt1.close();
            rs1.close();
            con.close();
            
            
           
        } catch (NamingException ex) {
            Logger.getLogger(EditBookDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditBookDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
     return list;
    }
    
    
    
    
    public ArrayList<String[]> getAllBook() throws ParseException{
          ArrayList<String[]> list = new ArrayList<>();
            Connection con = null;
            Statement stmt1 = null;
            ResultSet rs1 = null;
        try {
           
            con=DBConnection.createconnection();
            stmt1=con.createStatement();
            String sql="select * from library";
            rs1=stmt1.executeQuery(sql);
            String[] info;
            while(rs1.next()){
            info=new String[11];
            info[0]=rs1.getString(1);
            info[1]=rs1.getString(2);
            info[2]=rs1.getString(3);
            info[3]=rs1.getString(4);
            info[4]=rs1.getString(5);
            info[5]=rs1.getString(6);
            info[6]=dateParse.getLocalDate(rs1.getString(7));
            info[7]=rs1.getString(8);
            info[8]=rs1.getString(9);
            info[9]=rs1.getString(10);
            info[10]=rs1.getString(11);
             list.add(info);
            }
            stmt1.close();
            rs1.close();
            con.close();
            
            
           
        } catch (NamingException ex) {
            Logger.getLogger(EditBookDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditBookDao.class.getName()).log(Level.SEVERE, null, ex);
           
        }
    
     return list;
    }
    

    
    public String[] getSelectedBook(String booktitle,String author) throws NamingException, SQLException, ParseException{
        
        String[] info=new String[11];
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        con = DBConnection.createconnection();
        String sql1="select * from library where booktitle='"+booktitle+"' and author='"+author+"' ";
           
           statement = con.createStatement(); 
           rs=statement.executeQuery(sql1);
        while(rs.next()){
              info[0]=rs.getString(1);
            info[1]=rs.getString(2);
           info[2]=rs.getString(3);
            info[3]=rs.getString(4);
            info[4]=rs.getString(5);
            info[5]=rs.getString(6);
            info[6]=dateParse.getLocalDate(rs.getString(7));
            info[7]=rs.getString(8);
            info[8]=rs.getString(9);
            info[9]=rs.getString(10);
            info[10]=rs.getString(11);
        }
        statement.close();rs.close();con.close();
        return info;
    
    
    }
    
    public LinkedHashMap<String, String> showdropdownbook(String author) throws NamingException, SQLException{
        LinkedHashMap<String, String> m=new LinkedHashMap<>();
        Connection con = null;
         PreparedStatement stmt2=null;
        ResultSet rs=null;
        String id=null;
        String name=null;
        con = DBConnection.createconnection();
         con.setAutoCommit(false);
         try{
        String sql1="select * from library where author='"+author+"'";
        stmt2 = con.prepareStatement(sql1);
           rs=stmt2.executeQuery();
            while(rs.next()){
              id=rs.getString("bookid");
              name=rs.getString("booktitle");
              m.put(id, name);
              
            
            }
             rs.close();stmt2.close();
            
            con.commit();
            con.close();
        return m;
    }
        catch(Exception e)
        {
            try{con.rollback();
            con.close();
            }catch(Exception e2){}
            return null;
        }
    
    }
    
    
        

   
}
