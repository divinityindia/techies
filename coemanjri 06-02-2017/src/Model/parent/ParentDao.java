package Model.parent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import Bean.Parent;
import Com.DBConnection;

public class ParentDao {

	public static int addParent(Parent parent) {
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con = DBConnection.createconnection();
			pst=con.prepareStatement("insert into parent (studentid,guardianname,fathername,mothername,foccupation,moccupation,phone,address,photo)values(?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, parent.getStudentId());
			pst.setString(2, parent.getGuardianName());
			pst.setString(3, parent.getFatherName());
			pst.setString(4, parent.getMotherName());
			pst.setString(5, parent.getFoccupation());
			pst.setString(6, parent.getMoccupation());
			pst.setString(7, parent.getPhone());
			pst.setString(8, parent.getAddress());
			pst.setBlob(9, parent.getPhoto());
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
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

	public static int updateParent(Parent parent) {
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con = DBConnection.createconnection();
			pst=con.prepareStatement("update parent set guardianname=?,fathername=?,mothername=?,foccupation=?,moccupation=?,phone=?,address=? where studentid=?");
			pst.setString(1, parent.getGuardianName());
			pst.setString(2, parent.getFatherName());
			pst.setString(3, parent.getMotherName());
			pst.setString(4, parent.getFoccupation());
			pst.setString(5, parent.getMoccupation());
			pst.setString(6, parent.getPhone());
			pst.setString(7, parent.getAddress());
			pst.setInt(8, parent.getStudentId());
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
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

}
