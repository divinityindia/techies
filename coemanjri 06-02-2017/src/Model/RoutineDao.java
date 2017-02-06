package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.naming.NamingException;

import Bean.RoutineBean;
import Com.DBConnection;

public class RoutineDao {

	public static int addRoutine(RoutineBean routineBean) {
		
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into routine(coursename,branchname,classname,sectionname,subject,day,starttime,endtime,room)values(?,?,?,?,?,?,?,?,?)");
			pst.setString(1, routineBean.getCourse());
			pst.setString(2, routineBean.getBranch());
			pst.setString(3, routineBean.getClass1());
			pst.setString(4, routineBean.getSection());
			pst.setString(5, routineBean.getSubject());
			pst.setString(6, routineBean.getDay());
			pst.setString(7, routineBean.getTimeFrom());
			pst.setString(8, routineBean.getTimeto());
			pst.setString(9, routineBean.getRoom());
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
		} catch (NamingException | SQLException e) {
			
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public static List<String> getSections(String course, String branch, String class1) {
		
		ArrayList<String> sections=new ArrayList<>();
		Connection con=null;
		ResultSet rs=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("select distinct sectionname from routine where coursename=? and branchname=? and classname=?");
			pst.setString(1, course);
			pst.setString(2, branch);
			pst.setString(3, class1);
			rs=pst.executeQuery();
			while(rs.next())
			{
				sections.add(rs.getString(1));
			}
			pst.close();
			con.close();
			return sections;
		} catch (NamingException | SQLException e) {
			
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return sections;
	}

	public static ArrayList<RoutineBean> getRoutines(String course, String branch, String class1, String section) {
		
		ArrayList<RoutineBean> routines=new ArrayList<>();
		Connection con=null;
		ResultSet rs=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("select routineid,subject,day,starttime,endtime,room from routine where coursename=? and branchname=? and classname=? and sectionname=?");
			pst.setString(1, course);
			pst.setString(2, branch);
			pst.setString(3, class1);
			pst.setString(4, section);
			rs=pst.executeQuery();
			while(rs.next())
			{
				routines.add(new RoutineBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)) );
			}
			pst.close();
			con.close();
			return routines;
		} catch (NamingException | SQLException e) {
			
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return routines;
	}
	
	public static int deleteRoutine(int routineId) {
		
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from routine where routineid=?");
			pst.setInt(1, routineId);
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
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
		
		return result;
	}

	public static int editRoutine(RoutineBean routineBean) {
		
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update routine set starttime=?, endtime=? ,room=? where routineid=?");
			
			pst.setString(1, routineBean.getTimeFrom());
			pst.setString(2, routineBean.getTimeto());
			pst.setString(3, routineBean.getRoom());
			pst.setInt(4, routineBean.getRoutineId());
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
		} catch (NamingException | SQLException e) {
			
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}

	
}
