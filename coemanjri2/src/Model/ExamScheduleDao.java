package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import Bean.ClassBean;
import Bean.ExamBean;
import Bean.ExamScheduleBean;
import Com.DBConnection;

public class ExamScheduleDao {

public static int addExamSchedule(ExamScheduleBean examScheduleBean) {
		
		
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into examschedule(examname,classname,sectionname,subjectname,dateofexam,timefrom,timeto,room)values(?,?,?,?,?,?,?,?)");
			pst.setString(1, examScheduleBean.getExamName());
			pst.setString(2, examScheduleBean.getClassName());
			pst.setString(3, examScheduleBean.getSectionName());
			pst.setString(4, examScheduleBean.getSubjectName());
			pst.setDate(5, examScheduleBean.getDateofExam());
			pst.setString(6, examScheduleBean.getTimeFrom());
			pst.setString(7, examScheduleBean.getTimeTo());
			pst.setString(8, examScheduleBean.getRoom());
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException | NamingException e) {
			
			e.printStackTrace();
		}
		finally {
			
			try {
				con.close();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			
		}
		
		return result;
	}


	public static int editExamSchedule(ExamScheduleBean examScheduleBean) {
		
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update examschedule set examname=?,classname=?,sectionname=?,subjectname=?,dateofexam=?,timefrom=?,timeto=?,room=? where examscheduleid=?");
			pst.setString(1, examScheduleBean.getExamName());
			pst.setString(2, examScheduleBean.getClassName());
			pst.setString(3, examScheduleBean.getSectionName());
			pst.setString(4, examScheduleBean.getSubjectName());
			pst.setDate(5, examScheduleBean.getDateofExam());
			pst.setString(6, examScheduleBean.getTimeFrom());
			pst.setString(7, examScheduleBean.getTimeTo());
			pst.setString(8, examScheduleBean.getRoom());
			pst.setInt(9, examScheduleBean.getExamScheduleId());
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
		
	public static ArrayList<ExamScheduleBean> getExamScheduleList() {
		
		ArrayList<ExamScheduleBean> examScheduleBeans=new ArrayList<>();
		
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from examschedule order by examscheduleid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                examScheduleBeans.add(new ExamScheduleBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
            statement.close();
            rs.close();
            con.close();
            return examScheduleBeans;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally {
			
        	try{
                con.close();
               }catch(Exception e1){}
		}
        
        return examScheduleBeans;
		
	}

	public static int deleteExamSchedule(String[] examScheduleIdList) {
		
		int result=0;
		Connection con=null;
		String examScheduleId="";
		for (String examSchedule : examScheduleIdList) {
			examScheduleId=examScheduleId+","+examSchedule;
		}
		
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from examschedule where examscheduleid in ("+examScheduleId.substring(1)+")");
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

	

	
}