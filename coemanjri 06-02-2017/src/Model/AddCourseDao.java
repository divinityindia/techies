package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.NamingException;

import Bean.CourseBean;
import Com.DBConnection;

public class AddCourseDao {

	public static int addCourse(CourseBean courseBean) {
		
		String courseName=courseBean.getCourseName();
		String courseDuration=courseBean.getCourseDuration();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into course(coursename,courseduration)values('"+courseName+"','"+courseDuration+"')");
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

	public static int deleteCourse(String[] courseIDList) {
		
		int result=0;
		Connection con=null;
		String courseId="";
		for (String course : courseIDList) {
			courseId=courseId+","+course;
		}
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from course where courseid in ("+courseId.substring(1)+")");
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

	public static int editCourse(CourseBean courseBean) {
		int courseId=courseBean.getCourseId();
		String courseName=courseBean.getCourseName();
		String courseDuration=courseBean.getCourseDuration();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update course set coursename=?,courseduration=? where courseid=?");
			pst.setString(1, courseName);
			pst.setString(2, courseDuration);
			pst.setInt(3, courseId);
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

	public static ArrayList<CourseBean> getCourseList() {
		
		ArrayList<CourseBean> courseBeans=new ArrayList<>();
		Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from course order by courseid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                courseBeans.add(new CourseBean(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
            statement.close();
            rs.close();
            con.close();
            return courseBeans;
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
        return courseBeans;
	}
}
