package Model;

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

import Bean.BranchBean;
import Com.DBConnection;
import Com.dateParse;

public class AddBranchDao {

	public static int addBranch(BranchBean branchBean) {
		
		String branch=branchBean.getBranchName();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into branch(branchname)values('"+branch+"')");
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

	public static int deleteBranch(String[] branchIDList) {
		
		int result=0;
		Connection con=null;
		String branchId="";
		for (String branch : branchIDList) {
			branchId=branchId+","+branch;
		}
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from branch where branchid in ("+branchId.substring(1)+")");
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

	public static int editBranch(BranchBean branchBean) {
		
		String branch=branchBean.getBranchName();
		int branchId=branchBean.getBranchid();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update branch set branchname=? where branchid=?");
			pst.setString(1, branch);
			pst.setInt(2, branchId);
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

	public static ArrayList<BranchBean> getBranchList() {
		
		ArrayList<BranchBean> branchBeans=new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from branch order by branchid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                branchBeans.add(new BranchBean(rs.getInt(1), rs.getString(2)));
            }
            statement.close();
            rs.close();
            con.close();
            return branchBeans;
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
       	finally {
       		try{
                con.close();
               }catch(Exception e1){
            	   e1.printStackTrace();
               }
       	}
       return branchBeans;
	}
}
