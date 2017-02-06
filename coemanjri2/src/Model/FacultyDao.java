package Model;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import Bean.Employee;
import Com.DBConnection;

public class FacultyDao {

	public static int addfaculty(Employee fBean) {
		
		int result=0;
		int key=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			
			PreparedStatement pst=con.prepareStatement("insert into faculty (sal,fname,mname,lname,photo,panno,aadharno,paddress,caddress,pstate,state,pcity,city,ppin,cpin,dob,gender,religion,caste,mstatus,mobile,email,website,branchid,post,doj,noa,noj)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, fBean.getSal());
			pst.setString(2, fBean.getFname());
			pst.setString(3, fBean.getMname());
			pst.setString(4, fBean.getLname());
			pst.setBlob(5, fBean.getPhoto());
			pst.setString(6, fBean.getPanno());
			pst.setString(7, fBean.getAadharno());
			pst.setString(8, fBean.getPaddress());
			pst.setString(9, fBean.getCaddress());
			pst.setString(10, fBean.getPstate());
			pst.setString(11, fBean.getState());
			pst.setString(12, fBean.getPcity());
			pst.setString(13, fBean.getCity());
			pst.setString(14, fBean.getPpin());
			pst.setString(15, fBean.getCpin());
			pst.setDate(16, fBean.getDob());
			pst.setString(17, fBean.getGender());
			pst.setString(18, fBean.getReligion());
			pst.setString(19, fBean.getCaste());
			pst.setString(20, fBean.getMstatus());
			pst.setString(21, fBean.getMobile());
			pst.setString(22, fBean.getEmail());
			pst.setString(23, fBean.getWebsite());
			pst.setInt(24, fBean.getBranchId());
			pst.setString(25, fBean.getPost());
			pst.setDate(26, fBean.getDoj());
			pst.setString(27, fBean.getNoa());
			pst.setString(28, fBean.getNoj());
			result=pst.executeUpdate();
			
			ResultSet keys = pst.getGeneratedKeys();    
			keys.next();  
			key = keys.getInt(1);
			
			/*pst=con.prepareStatement("insert into login (username,password,category)values(?,?,?)");
			pst.setString(1, teacherBean.getUsername());
			pst.setString(2, password);
			pst.setString(3, "teacher");
			result=pst.executeUpdate();*/
			pst.close();
			con.close();
			return key;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
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
		
		return key;
	}

	public static int[] addQual(ArrayList<HashMap<String, String>> qual) {
		
		int result[] = null;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
			
			pst=con.prepareStatement("insert into facultyqual(fid,qname,degree,specialization,institute,university,passyr,per,achievement)values(?,?,?,?,?,?,?,?,?)");
			
			for (HashMap<String, String> q : qual) {
				pst.setInt(1, Integer.parseInt(q.get("fid")));
				pst.setString(2, q.get("qname"));
				pst.setString(3, q.get("degree"));
				pst.setString(4, q.get("spl"));
				pst.setString(5, q.get("inst"));
				pst.setString(6, q.get("univ"));
				pst.setString(7, q.get("pyr"));
				pst.setString(8, q.get("per"));
				pst.setString(9, q.get("achiev"));
				pst.addBatch();
			}
			
			
			result=pst.executeBatch();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
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

	public static int[] addCert(ArrayList<HashMap<String, String>> cert) {
		
		int result[] = null;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
			
			pst=con.prepareStatement("insert into facultycert(fid,coursename,institute,duration,content)values(?,?,?,?,?)");
			
			for (HashMap<String, String> c : cert) {
				pst.setInt(1, Integer.parseInt(c.get("fid")));
				pst.setString(2, c.get("crsname"));
				pst.setString(3, c.get("cinst"));
				pst.setString(4, c.get("cduration"));
				pst.setString(5, c.get("ccontent"));
				
				pst.addBatch();
			}
			
			
			result=pst.executeBatch();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
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

	
}
