package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.NamingException;

import Bean.ExamBean;
import Com.DBConnection;

public class ExamDao {

	public static int addExam(ExamBean examBean) {
		
		String examName=examBean.getExamName();
		Date dateofExam=examBean.getDateofexam();
		String note=examBean.getNote();
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into exam(examname,dateofexam,note)values(?,?,?)");
			pst.setString(1, examName);
			pst.setDate(2, dateofExam);
			pst.setString(3, note);
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

	public static int editExam(ExamBean examBean) {
		
		String examName=examBean.getExamName();
		Date dateofExam=examBean.getDateofexam();
		String note=examBean.getNote();
		int examId=examBean.getExamId();
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update exam set examname=?,dateofexam=?,note=? where examid=?");
			pst.setString(1, examName);
			pst.setDate(2, dateofExam);
			pst.setString(3, note);
			pst.setInt(4, examId);
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

	public static int deleteExam(String[] examIDList) {
		
		int result=0;
		Connection con=null;
		String examId="";
		for (String exam : examIDList) {
			examId=examId+","+exam;
		}
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from exam where examid in ("+examId.substring(1)+")");
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

	public static ArrayList<ExamBean> getExamList() {
		
		ArrayList<ExamBean> examBeans=new ArrayList<>();
		Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from exam order by examid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                examBeans.add(new ExamBean(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4)));
            }
            statement.close();
            rs.close();
            con.close();
            return examBeans;
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
        return examBeans;
	}

}
