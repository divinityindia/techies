/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Com.DBConnection;
import Com.dateParse;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import javax.naming.NamingException;

import Bean.AttendanceBean;

/**
 *
 * @author admin
 */
public class AttendanceDao {
    public static String getTodayAttendance(AttendanceBean bean){
        
    	Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
    	String list = new String();
        try{
	        
	        String status=bean.getStatus();
	        con=DBConnection.createconnection();
	        stmt=con.createStatement();
	        //String sql="insert into attendance (id,studentid,date,status)values('"+id+"','"+studentid+"','"+dateParse.getMysqlDate(date)+"','"+status+"')";
	        //stmt.executeUpdate(sql);
	         //stmt.close();con.close();
             return "SUCCESS"; 
        }catch(SQLException | NamingException e){
             
            return String.valueOf(e);
        }
        
    
    
    }

	public static int addAttendanceRecord(String[] studentIdList, Date sqlDate, String teacherId, String subjectId, String courseId,
			String semester, String branchId, String classId, String sectionId) {
		
		
		
		Connection con=null;
		PreparedStatement pst=null;
		int []result;
		try {
			
			con = DBConnection.createconnection();
			if(studentIdList!=null)
			{
				
				pst=con.prepareStatement("insert into attendance (studentid,date,status,teacherid,subjectid,courseid,semester,branchid,classid,sectionid)values(?,?,?,?,?,?,?,?,?,?)");
				for (String list : studentIdList) {
					pst.setInt(1, Integer.parseInt(list));
					pst.setDate(2, sqlDate);
					pst.setString(3, "P");
					pst.setInt(4, Integer.parseInt(teacherId));
					pst.setInt(5, Integer.parseInt(subjectId));
					pst.setInt(6, Integer.parseInt(courseId));
					pst.setString(7,semester);
					pst.setInt(8, Integer.parseInt(branchId));
					pst.setInt(9, Integer.parseInt(classId));
					pst.setInt(10, Integer.parseInt(sectionId));
					pst.addBatch();
				}
				
				result=pst.executeBatch();
				
				StringBuilder studentListQuery=new StringBuilder();
				
				for (String string : studentIdList) {
					
					studentListQuery.append(string+",");
					
				}
				
				String q=studentListQuery.substring(0, studentListQuery.lastIndexOf(","));
				ArrayList<Integer> absentStudentId=new ArrayList<>();
				System.out.println(q);
				pst=con.prepareStatement("select studentid from student where courseid=? and branchid=? and semester=? and classid=? and sectionid=? and studentid not in ("+q+")");
				pst.setInt(1, Integer.parseInt(courseId));
				pst.setInt(2, Integer.parseInt(branchId));
				pst.setString(3,semester);
				pst.setInt(4, Integer.parseInt(classId));
				pst.setInt(5, Integer.parseInt(sectionId));
				ResultSet rs=pst.executeQuery();
				
				while(rs.next())
				{
					absentStudentId.add(rs.getInt(1));
				}
				
				pst=con.prepareStatement("insert into attendance (studentid,date,status,teacherid,subjectid,courseid,semester,branchid,classid,sectionid)values(?,?,?,?,?,?,?,?,?,?)");
				for (Integer list : absentStudentId) {
					pst.setInt(1, list);
					pst.setDate(2, sqlDate);
					pst.setString(3, "A");
					pst.setInt(4, Integer.parseInt(teacherId));
					pst.setInt(5, Integer.parseInt(subjectId));
					pst.setInt(6, Integer.parseInt(courseId));
					pst.setString(7,semester);
					pst.setInt(8, Integer.parseInt(branchId));
					pst.setInt(9, Integer.parseInt(classId));
					pst.setInt(10, Integer.parseInt(sectionId));
					pst.addBatch();
				}
				result=pst.executeBatch();
			}
			
			else
			{
				ArrayList<Integer> absentStudentId=new ArrayList<>();
				
				pst=con.prepareStatement("select studentid from student where courseid=? and branchid=? and semester=?");
				pst.setInt(1, Integer.parseInt(courseId));
				pst.setInt(2, Integer.parseInt(branchId));
				pst.setString(3,semester);
				ResultSet rs=pst.executeQuery();
				
				while(rs.next())
				{
					absentStudentId.add(rs.getInt(1));
				}
				
				pst=con.prepareStatement("insert into attendance (studentid,date,status,teacherid,subjectid,courseid,semester,branchid,classid,sectionid)values(?,?,?,?,?,?,?,?,?,?)");
				for (Integer list : absentStudentId) {
					pst.setInt(1, list);
					pst.setDate(2, sqlDate);
					pst.setString(3, "A");
					pst.setInt(4, Integer.parseInt(teacherId));
					pst.setInt(5, Integer.parseInt(subjectId));
					pst.setInt(6, Integer.parseInt(courseId));
					pst.setString(7,semester);
					pst.setInt(8, Integer.parseInt(branchId));
					pst.setInt(9, Integer.parseInt(classId));
					pst.setInt(10, Integer.parseInt(sectionId));
					pst.addBatch();
				}
				result=pst.executeBatch();
			}
			
			pst.close();
			con.close();
			return 1;
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		finally {
			
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		return 0;
	}
}
