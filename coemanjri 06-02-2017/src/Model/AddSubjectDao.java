package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import Bean.SubjectBean;
import Com.DBConnection;

public class AddSubjectDao {

	public static int addSubject(SubjectBean subjectBean) {
		
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into subject(subjectname,courseid,semester,branchid)values('"+subjectBean.getSubjectName()+"',"+subjectBean.getCourseId()+",'"+subjectBean.getSemester()+"',"+subjectBean.getBranchId()+")");
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

	public static HashMap<String, String> getSubjectList(SubjectBean subjectBean) {
		
		Connection con=null;
		LinkedHashMap<String,String> subjetList = new LinkedHashMap<String,String>();
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("select subjectid,subjectname from subject where courseid="+subjectBean.getCourseId()+" and semester='"+subjectBean.getSemester()+"' and branchid="+subjectBean.getBranchId()+"");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				subjetList.put(rs.getString("subjectid"),rs.getString("subjectname"));
			}
			rs.close();
			pst.close();
			con.close();
			return subjetList;
			
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
		
		return subjetList;

	}

	public static int deleteSubject(String[] subjectIDList) {
		
		int result=0;
		Connection con=null;
		String subjectId="";
		for (String subject : subjectIDList) {
			subjectId=subjectId+","+subject;
		}
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from subject where subjectid in ("+subjectId.substring(1)+")");
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

	public static int editSubject(SubjectBean subjectBean) {
		
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update subject set subjectname=?,courseid=?,semester=?,branchid=? where subjectid=?");
			pst.setString(1, subjectBean.getSubjectName());
			pst.setInt(2, subjectBean.getCourseId());
			pst.setString(3, subjectBean.getSemester());
			pst.setInt(4, subjectBean.getBranchId());
			pst.setInt(5, subjectBean.getSubjectid());
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
	
public static ArrayList<SubjectBean> getSubjectList() {
		
		Connection con=null;
		ArrayList<SubjectBean> subjectBeans=new ArrayList<>();
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("select * from subject");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				subjectBeans.add(new SubjectBean(rs.getInt(1), rs.getString(2), rs.getInt(3),  rs.getString(4), rs.getInt(5)));
			}
			rs.close();
			pst.close();
			con.close();
			return subjectBeans;
			
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
		return subjectBeans;

	}

public static HashMap<String, String> getSubjectList(int courseId, int branchId) {
	
	Connection con=null;
	LinkedHashMap<String,String> subjetList = new LinkedHashMap<String,String>();
	try {
		con=DBConnection.createconnection();
		PreparedStatement pst=con.prepareStatement("select subjectid,subjectname from subject where courseid="+courseId+" and branchid="+branchId+"");
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			subjetList.put(rs.getString("subjectid"),rs.getString("subjectname"));
		}
		rs.close();
		pst.close();
		con.close();
		return subjetList;
		
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
	
	return subjetList;
}
}
