package Model;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import Bean.ParentBean;
import Bean.TeacherBean;
import Com.DBConnection;
import Com.MD5;

public class AddParentDao {

	public static MD5 m=new MD5();
	public static int addParent(ParentBean parentBean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			String password=m.getpass(parentBean.getPassword());
			PreparedStatement pst=con.prepareStatement("insert into parent (studentid,guardianname,fathername,mothername,fatherprofession,motherprofession,email,phone,address,city,state,photo,username,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, parentBean.getStudentid());
			pst.setString(2, parentBean.getGuardianname());
			pst.setString(3, parentBean.getFathername());
			pst.setString(4, parentBean.getMothername());
			pst.setString(5, parentBean.getFatherProfession());
			pst.setString(6, parentBean.getMotherProfession());
			pst.setString(7, parentBean.getEmail());
			pst.setString(8, parentBean.getPhone());
			pst.setString(9, parentBean.getAddress());
			pst.setString(10, parentBean.getCity());
			pst.setString(11, parentBean.getState());
			pst.setBlob(12, parentBean.getPhotoInputStream());
			pst.setString(13, parentBean.getUsername());
			pst.setString(14, password);
			result=pst.executeUpdate();
			pst=con.prepareStatement("insert into login (username,password,category)values(?,?,?)");
			pst.setString(1, parentBean.getUsername());
			pst.setString(2, password);
			pst.setString(3, "parent");
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
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

	public static ParentBean getSingleParent(int studentId) {
		ParentBean parentBean=new ParentBean();
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select * from parent where studentid="+studentId+""; 
            rs = stmt.executeQuery(sql); 
            while(rs.next()){
            	parentBean.setParentid(rs.getInt(1));
            	parentBean.setStudentid(rs.getInt(2));
            	parentBean.setGuardianname(rs.getString(3));
            	parentBean.setFathername(rs.getString(4));
            	parentBean.setMothername(rs.getString(5));
            	parentBean.setFatherProfession(rs.getString(6));
            	parentBean.setMotherProfession(rs.getString(7));
            	parentBean.setEmail(rs.getString(8));
            	parentBean.setPhone(rs.getString(9));
            	parentBean.setAddress(rs.getString(10));
            	parentBean.setCity(rs.getString(11));
            	parentBean.setState(rs.getString(12));
            	parentBean.setPhotoInputStream(rs.getBinaryStream(13));
            	parentBean.setUsername(rs.getString(14));
            	parentBean.setPassword(rs.getString(15));

            }
            stmt.close();
            rs.close();
            con.close();
            return parentBean;
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
        return parentBean;
	}

	public static Blob getImage(int studentId) {
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Blob image =null;
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select photo from parent where studentid="+studentId;
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

	public static int updateParent(ParentBean parentBean, String changePhoto) {
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
			if(changePhoto!=null)
			{
				pst=con.prepareStatement("update parent set guardianname=?,fathername=?,mothername=?,fatherprofession=?,motherprofession=?,email=?,phone=?,address=?,city=?,state=?,photo=? where studentid=?");
				pst.setString(1, parentBean.getGuardianname());
				pst.setString(2, parentBean.getFathername());
				pst.setString(3, parentBean.getMothername());
				pst.setString(4, parentBean.getFatherProfession());
				pst.setString(5, parentBean.getMotherProfession());
				pst.setString(6, parentBean.getEmail());
				pst.setString(7, parentBean.getPhone());
				pst.setString(8, parentBean.getAddress());
				pst.setString(9, parentBean.getCity());
				pst.setString(10, parentBean.getState());
				pst.setBlob(11, parentBean.getPhotoInputStream());
				pst.setInt(12, parentBean.getStudentid());
			}
			else
			{
				pst=con.prepareStatement("update parent set guardianname=?,fathername=?,mothername=?,fatherprofession=?,motherprofession=?,email=?,phone=?,address=?,city=?,state=? where studentid=?");
				pst.setString(1, parentBean.getGuardianname());
				pst.setString(2, parentBean.getFathername());
				pst.setString(3, parentBean.getMothername());
				pst.setString(4, parentBean.getFatherProfession());
				pst.setString(5, parentBean.getMotherProfession());
				pst.setString(6, parentBean.getEmail());
				pst.setString(7, parentBean.getPhone());
				pst.setString(8, parentBean.getAddress());
				pst.setString(9, parentBean.getCity());
				pst.setString(10, parentBean.getState());
				//pst.setBlob(11, parentBean.getPhotoInputStream());
				pst.setInt(11, parentBean.getStudentid());
				
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

	public static HashMap<String, String> getPhonenos() {
		
		LinkedHashMap<String, String> phonenos=new LinkedHashMap<>();
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Blob image =null;
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select studentid,phone from parent";
            rs = stmt.executeQuery(sql); 
            while(rs.next()){
              
            	phonenos.put(rs.getString("studentid"), rs.getString("phone"));
              
            }
            
            stmt.close();
            rs.close();
            con.close();
            return phonenos;
            
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
        return phonenos;
	}

	public static String emergContactNo(int studentId) {
		
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String phone="";
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select phone from parent where studentid="+studentId+""; 
            rs = stmt.executeQuery(sql); 
            if(rs.next()){
            	phone=rs.getString(1);

            }
            stmt.close();
            rs.close();
            con.close();
        } 
        catch(Exception e)
         {
        	e.printStackTrace();
             //out.print(e);
            //return String.valueOf(e);
           
         }
        finally {
        	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
        return phone;
	}
}
