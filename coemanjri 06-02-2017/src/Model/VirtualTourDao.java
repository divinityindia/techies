package Model;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import Com.DBConnection;

public class VirtualTourDao {

	public static int deleteVt() {
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
				pst=con.prepareStatement("delete from virtualtour");
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

	public static int addVideo(InputStream video) {
		Connection con=null;
		int result=0;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into virtualtour(vt)values(?)");
			pst.setBlob(1, video);
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
		} catch (Exception e) {
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

	public static Blob getVideo() {
		Connection con = null;
        ResultSet rs = null;
        Blob video =null;
        try {
        
            con = DBConnection.createconnection();
            PreparedStatement pst=con.prepareStatement("select vt from virtualtour limit 1");
            rs=pst.executeQuery();
            if(rs.next()){
              
            	video = rs.getBlob(1);
              
            }
            
            pst.close();
            rs.close();
            con.close();
            return video;  
        } 
        catch(Exception e)
        {
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
        return video;
	}

	public static int checkVT() {
		Connection conn=null;
		ResultSet resultSet=null;
		Statement statement=null;
		int result=0;
		
		try {
			conn=DBConnection.createconnection();
			statement=conn.createStatement();
			resultSet=statement.executeQuery("select count(*) from virtualtour");
			if(resultSet.next())
			{
				result=resultSet.getInt(1);
			}
			
			
			

			
			resultSet.close();
			conn.close();
			return result;
			
			
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
		return result;
		
	}
	}
