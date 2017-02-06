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
import Com.DBConnection;

public class AddClassDao {

	public static int addClass(ClassBean classBean) {
		
		
		String className=classBean.getClassName();
		String classNumeric=classBean.getClassNumeric();
		//String teacherName=classBean.getTeacherName();
		String note=classBean.getNote();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into class(classname,classnumeric,note)values('"+className+"','"+classNumeric+"','"+note+"')");
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

	public static int deleteClass(String[] classIDList) {
		
		int result=0;
		Connection con=null;
		String classId="";
		for (String class1 : classIDList) {
			classId=classId+","+class1;
		}
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from class where classid in ("+classId.substring(1)+")");
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

	public static int editClass(ClassBean classBean) {
		
		String className=classBean.getClassName();
		String classNumeric=classBean.getClassNumeric();
		
		int classId=classBean.getClassId();
		String note=classBean.getNote();
		
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update class set classname=?,classnumeric=?,note=? where classid=?");
			pst.setString(1, className);
			pst.setString(2, classNumeric);
			pst.setString(3, note);
			pst.setInt(4, classId);
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

	public static ArrayList<ClassBean> getClassList() {
		
		ArrayList<ClassBean> classBeans=new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from class order by classid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                classBeans.add(new ClassBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
            statement.close();
            rs.close();
            con.close();
            return classBeans;
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
        return classBeans;
	}
}