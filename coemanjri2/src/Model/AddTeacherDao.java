package Model;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import Bean.StudentBean;
import Bean.TeacherBean;
import Com.DBConnection;
import Com.MD5;

public class AddTeacherDao {

	public static MD5 m=new MD5();
	public static int addTeacher(TeacherBean teacherBean) {
		
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			String password=m.getpass(teacherBean.getPassword());
			PreparedStatement pst=con.prepareStatement("insert into teacher (teachername,designation,dateofbirth,gender,religion,caste,email,phone,address,city,state,classid,dateofjoining,photo,username,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, teacherBean.getTeacherName());
			pst.setString(2, teacherBean.getDesignation());
			pst.setDate(3, teacherBean.getDateOfBirth());
			pst.setString(4, teacherBean.getGender());
			pst.setString(5, teacherBean.getReligion());
			pst.setString(6, teacherBean.getCaste());
			pst.setString(7, teacherBean.getEmail());
			pst.setString(8, teacherBean.getPhone());
			pst.setString(9, teacherBean.getAddress());
			pst.setString(10, teacherBean.getCity());
			pst.setString(11, teacherBean.getState());
			pst.setInt(12, teacherBean.getClassId());
			pst.setDate(13, teacherBean.getDateofjoining());
			pst.setBlob(14, teacherBean.getPhotoInputStream());
			pst.setString(15, teacherBean.getUsername());
			pst.setString(16, password);
			result=pst.executeUpdate();
			pst=con.prepareStatement("insert into login (username,password,category)values(?,?,?)");
			pst.setString(1, teacherBean.getUsername());
			pst.setString(2, password);
			pst.setString(3, "teacher");
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
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
	
	
	public static TeacherBean getSingleTeacher(int teacherId) {
		
		TeacherBean teacherBean=new TeacherBean();
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select * from teacher where teacherid="+teacherId+""; 
            rs = stmt.executeQuery(sql); 
            while(rs.next()){
            	teacherBean.setTeacherid(rs.getInt(1));
            	teacherBean.setTeacherName(rs.getString(2));
                teacherBean.setDesignation(rs.getString(3));
                teacherBean.setDateOfBirth(rs.getDate(4));
                teacherBean.setGender(rs.getString(5));
                teacherBean.setReligion(rs.getString(6));
                teacherBean.setCaste(rs.getString(7));
                teacherBean.setEmail(rs.getString(8));
                teacherBean.setPhone(rs.getString(9));
                teacherBean.setAddress(rs.getString(10));
                teacherBean.setCity(rs.getString(11));
                teacherBean.setState(rs.getString(12));
                teacherBean.setClassId(rs.getInt(13));
                teacherBean.setDateofjoining(rs.getDate(14));
                teacherBean.setPhotoInputStream(rs.getBinaryStream(15));
                teacherBean.setUsername(rs.getString(16));
                teacherBean.setPassword(rs.getString(17));

            }
            stmt.close();
            rs.close();
            con.close();
            return teacherBean;
            
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
        
        return teacherBean;
		
	}


	public static Blob getImage(int teacherId) {
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Blob image =null;
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select photo from teacher where teacherid="+teacherId;
            rs = stmt.executeQuery(sql); 
            if(rs.next()){
              
            	image = rs.getBlob(1);
              
            }
             
            stmt.close();
            rs.close();
            con.close();
            return image;
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
        return image;

	}


	public static int updateTeacher(TeacherBean teacherBean, String changePhoto) {
		
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
			if(changePhoto!=null)
			{
				pst=con.prepareStatement("update teacher set teachername=?,designation=?,dateofbirth=?,gender=?,religion=?,caste=?,email=?,phone=?,address=?,city=?,state=?,classid=?,dateofjoining=?,photo=? where teacherid=?");
				pst.setString(1, teacherBean.getTeacherName());
				pst.setString(2, teacherBean.getDesignation());
				pst.setDate(3, teacherBean.getDateOfBirth());
				pst.setString(4, teacherBean.getGender());
				pst.setString(5, teacherBean.getReligion());
				pst.setString(6, teacherBean.getCaste());
				pst.setString(7, teacherBean.getEmail());
				pst.setString(8, teacherBean.getPhone());
				pst.setString(9, teacherBean.getAddress());
				pst.setString(10, teacherBean.getCity());
				pst.setString(11, teacherBean.getState());
				pst.setInt(12, teacherBean.getClassId());
				pst.setDate(13, teacherBean.getDateofjoining());
				pst.setBlob(14, teacherBean.getPhotoInputStream());
				pst.setInt(15, teacherBean.getTeacherid());
			}
			else
			{
				pst=con.prepareStatement("update teacher set teachername=?,designation=?,dateofbirth=?,gender=?,religion=?,caste=?,email=?,phone=?,address=?,city=?,state=?,classid=?,dateofjoining=? where teacherid=?");
				pst.setString(1, teacherBean.getTeacherName());
				pst.setString(2, teacherBean.getDesignation());
				pst.setDate(3, teacherBean.getDateOfBirth());
				pst.setString(4, teacherBean.getGender());
				pst.setString(5, teacherBean.getReligion());
				pst.setString(6, teacherBean.getCaste());
				pst.setString(7, teacherBean.getEmail());
				pst.setString(8, teacherBean.getPhone());
				pst.setString(9, teacherBean.getAddress());
				pst.setString(10, teacherBean.getCity());
				pst.setString(11, teacherBean.getState());
				pst.setInt(12, teacherBean.getClassId());
				pst.setDate(13, teacherBean.getDateofjoining());
				//pst.setBlob(14, teacherBean.getPhotoInputStream());
				pst.setInt(14, teacherBean.getTeacherid());
				
			}
			
			
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
