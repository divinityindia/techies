package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import Com.DBConnection;

public class GetCountDao {

	public static int[] count()
	{
		Connection conn=null;
		ResultSet resultSet=null;
		Statement statement=null;
		int studentCount=0;
		int teacherCount=0;
		int parentCount=0;
		int attendanceCount=0;
		int countPerson[]=new int[4];
		
		try {
			conn=DBConnection.createconnection();
			statement=conn.createStatement();
			resultSet=statement.executeQuery("select count(*) from student");
			if(resultSet.next())
			{
				studentCount=resultSet.getInt(1);
			}
			
			
			countPerson[0]=studentCount;
			
			resultSet=statement.executeQuery("select count(*) from teacher");
			
			if(resultSet.next())
			{
				teacherCount=resultSet.getInt(1);
			}
			
			countPerson[1]=teacherCount;

			resultSet=statement.executeQuery("select count(*) from parent");
			
			if(resultSet.next())
			{
				parentCount=resultSet.getInt(1);
			}
			
			countPerson[2]=parentCount;
			
			resultSet=statement.executeQuery("select count(*) from attendance");
			
			if(resultSet.next())
			{
				attendanceCount=resultSet.getInt(1);
			}
			
			countPerson[3]=attendanceCount;

			
			resultSet.close();
			conn.close();
			return countPerson;
			
			
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		finally {
			
			try {
				conn.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return countPerson;
		
	}
	
}
