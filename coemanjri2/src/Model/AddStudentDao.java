/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Com.DBConnection;
import Com.MD5;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import javax.naming.NamingException;

import Bean.ParentBean;
import Bean.StudentBean;

/**
 *
 * @author admin
 */
public class AddStudentDao {
    
	public static MD5 m=new MD5();
	public static int addStudent(StudentBean studentBean) {
		
		
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			String password=m.getpass(studentBean.getPassword());
			PreparedStatement pst=con.prepareStatement("insert into student (studentname,prnno,guardianname,gender,dateofbirth,bloodgroup,religion,category,caste,email,phone,address,city,state,pincode,classid,sectionid,rollno,photo,dateofadmission,academicyear,branchid,courseid,semester,username,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, studentBean.getStudentName());
			pst.setString(2, studentBean.getPrnno());
			pst.setString(3, studentBean.getGuardianName());
			pst.setString(4, studentBean.getGender());
			pst.setDate(5, studentBean.getDateofbirth());
			pst.setString(6, studentBean.getBloodgroup());
			pst.setString(7, studentBean.getReligion());
			pst.setString(8, studentBean.getCategory());
			pst.setString(9, studentBean.getCaste());
			pst.setString(10, studentBean.getEmail());
			pst.setString(11, studentBean.getPhone());
			pst.setString(12, studentBean.getAddress());
			pst.setString(13, studentBean.getCity());
			pst.setString(14, studentBean.getState());
			pst.setString(15, studentBean.getPincode());
			pst.setInt(16, studentBean.getClassId());
			pst.setInt(17, studentBean.getSectionId());
			pst.setInt(18, studentBean.getRollno());
			pst.setBlob(19, studentBean.getPhotoInputStream());
			pst.setDate(20, studentBean.getDateofadmission());
			pst.setString(21, studentBean.getAcademicyear());
			pst.setInt(22, studentBean.getBranchId());
			pst.setInt(23, studentBean.getCourseId());
			pst.setString(24, studentBean.getSemester());
			pst.setString(25, studentBean.getUsername());
			pst.setString(26, password);
			result=pst.executeUpdate();
			pst=con.prepareStatement("insert into login (username,password,category)values(?,?,?)");
			pst.setString(1, studentBean.getUsername());
			pst.setString(2, password);
			pst.setString(3, "student");
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


    public static HashMap<String,String> getStudent(String courseid,String semester,String branchid, String classid, String sectionid) {
        
    	LinkedHashMap<String,String> studentList = new LinkedHashMap<String,String>();
    	Connection con = null;
        Statement stmt1 = null;
        ResultSet rs1 = null;
        try {
        
            con = DBConnection.createconnection();
            stmt1 = con.createStatement();
            String sql = "select studentid,studentname,rollno from student where courseid="+courseid+" and semester='"+semester+"' and branchid="+branchid+" and classid="+classid+" and sectionid="+sectionid+" order by rollno";
            rs1 = stmt1.executeQuery(sql); 
            while(rs1.next()){
              
            	studentList.put(rs1.getString("studentid"), rs1.getInt("rollno")+" - "+rs1.getString("studentname"));
              
            }
            stmt1.close();
            rs1.close();
            con.close();
            return studentList;      
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
        return studentList;
    
    }


	public static StudentBean getSingleStudent(int studentId) {
		
		StudentBean studentBean=new StudentBean();
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        	con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select * from student where studentid="+studentId+""; 
            rs = stmt.executeQuery(sql); 
            while(rs.next()){
              studentBean.setStudentid(rs.getInt(1));
              studentBean.setStudentName(rs.getString(2));
              studentBean.setPrnno(rs.getString(3));
              studentBean.setGuardianName(rs.getString(4));
              studentBean.setGender(rs.getString(5));
              studentBean.setDateofbirth(rs.getDate(6));
              studentBean.setBloodgroup(rs.getString(7));
              studentBean.setReligion(rs.getString(8));
              studentBean.setCategory(rs.getString(9));
              studentBean.setCaste(rs.getString(10));
              studentBean.setEmail(rs.getString(11));
              studentBean.setPhone(rs.getString(12));
              studentBean.setAddress(rs.getString(13));
              studentBean.setCity(rs.getString(14));
              studentBean.setState(rs.getString(15));
              studentBean.setPincode(rs.getString(16));
              studentBean.setClassId(rs.getInt(17));
              studentBean.setSectionId(rs.getInt(18));
              studentBean.setRollno(rs.getInt(19));
              studentBean.setPhotoInputStream(rs.getBinaryStream(20));
              studentBean.setDateofadmission(rs.getDate(21));
              studentBean.setAcademicyear(rs.getString(22));
              studentBean.setBranchId(rs.getInt(23));
              studentBean.setCourseId(rs.getInt(24));
              studentBean.setSemester(rs.getString(25));
              studentBean.setUsername(rs.getString(26));
              studentBean.setPassword(rs.getString(27));
            }
            stmt.close();
            rs.close();
            con.close();
            return studentBean;
               
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
        return studentBean;
		
		
	}
	
	public static Blob getImage(int studentId) {
		
		Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Blob image =null;
        try {
        
            con = DBConnection.createconnection();
            stmt = con.createStatement();
            String sql = "select photo from student where studentid="+studentId;
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


	public static int updateStudent(StudentBean studentBean, String changePhoto) {
		
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
			if(changePhoto!=null)
			{
				pst=con.prepareStatement("update student set studentname=?,prnno=?,guardianname=?,gender=?,dateofbirth=?,bloodgroup=?,religion=?,category=?,caste=?,email=?,phone=?,address=?,city=?,state=?,pincode=?,classid=?,sectionid=?,rollno=?,photo=?,dateofadmission=?,academicyear=?,branchid=?,courseid=?,semester=? where studentid=?");
				pst.setString(1, studentBean.getStudentName());
				pst.setString(2, studentBean.getPrnno());
				pst.setString(3, studentBean.getGuardianName());
				pst.setString(4, studentBean.getGender());
				pst.setDate(5, studentBean.getDateofbirth());
				pst.setString(6, studentBean.getBloodgroup());
				pst.setString(7, studentBean.getReligion());
				pst.setString(8, studentBean.getCategory());
				pst.setString(9, studentBean.getCaste());
				pst.setString(10, studentBean.getEmail());
				pst.setString(11, studentBean.getPhone());
				pst.setString(12, studentBean.getAddress());
				pst.setString(13, studentBean.getCity());
				pst.setString(14, studentBean.getState());
				pst.setString(15, studentBean.getPincode());
				pst.setInt(16, studentBean.getClassId());
				pst.setInt(17, studentBean.getSectionId());
				pst.setInt(18, studentBean.getRollno());
				pst.setBlob(19, studentBean.getPhotoInputStream());
				pst.setDate(20, studentBean.getDateofadmission());
				pst.setString(21, studentBean.getAcademicyear());
				pst.setInt(22, studentBean.getBranchId());
				pst.setInt(23, studentBean.getCourseId());
				pst.setString(24, studentBean.getSemester());
				pst.setInt(25, studentBean.getStudentid());
			
			}
			
			else
				{
				
				
				pst=con.prepareStatement("update student set studentname=?,prnno=?,guardianname=?,gender=?,dateofbirth=?,bloodgroup=?,religion=?,category=?,caste=?,email=?,phone=?,address=?,city=?,state=?,pincode=?,classid=?,sectionid=?,rollno=?,dateofadmission=?,academicyear=?,branchid=?,courseid=?,semester=? where studentid=?");
				pst.setString(1, studentBean.getStudentName());
				pst.setString(2, studentBean.getPrnno());
				pst.setString(3, studentBean.getGuardianName());
				pst.setString(4, studentBean.getGender());
				pst.setDate(5, studentBean.getDateofbirth());
				pst.setString(6, studentBean.getBloodgroup());
				pst.setString(7, studentBean.getReligion());
				pst.setString(8, studentBean.getCategory());
				pst.setString(9, studentBean.getCaste());
				pst.setString(10, studentBean.getEmail());
				pst.setString(11, studentBean.getPhone());
				pst.setString(12, studentBean.getAddress());
				pst.setString(13, studentBean.getCity());
				pst.setString(14, studentBean.getState());
				pst.setString(15, studentBean.getPincode());
				pst.setInt(16, studentBean.getClassId());
				pst.setInt(17, studentBean.getSectionId());
				pst.setInt(18, studentBean.getRollno());
				//pst.setBlob(17, studentBean.getPhotoInputStream());
				pst.setDate(19, studentBean.getDateofadmission());
				pst.setString(20, studentBean.getAcademicyear());
				pst.setInt(21, studentBean.getBranchId());
				pst.setInt(22, studentBean.getCourseId());
				pst.setString(23, studentBean.getSemester());
				pst.setInt(24, studentBean.getStudentid());
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


	public static HashMap<String, String> getStudent1(String courseId, String semester, String branchId) {

			LinkedHashMap<String,String> studentList = new LinkedHashMap<String,String>();
			Connection con = null;
	        Statement stmt1 = null;
	        ResultSet rs1 = null;
	        try {
	        
	            con = DBConnection.createconnection();
	            stmt1 = con.createStatement();
	            String sql = "select studentid,studentname,rollno from student where courseid="+courseId+" and semester='"+semester+"' and branchid="+branchId+" order by rollno";
	            rs1 = stmt1.executeQuery(sql); 
	            while(rs1.next()){
	              
	            	studentList.put(rs1.getString("studentid"), rs1.getInt("rollno")+" - "+rs1.getString("studentname"));
	              
	            }
	            stmt1.close();
	            rs1.close();
	            con.close();
	            return studentList;
	            
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
	        return studentList;
	}


	public static ArrayList<StudentBean> getAllStudents(int courseId, int branchId, String semester) {
		
		ArrayList<StudentBean> studentBeans=new ArrayList<>();
		Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
        
            con = DBConnection.createconnection();
            String sql = "select * from student where courseid=? and semester=? and branchid=? order by rollno";
            System.out.println("in student dao");
            pst=con.prepareStatement(sql);
            pst.setInt(1, courseId);
            pst.setString(2, semester);
            pst.setInt(3, branchId);
            rs=pst.executeQuery(); 
            while(rs.next()){
              studentBeans.add(new StudentBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8),  rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15),  rs.getString(16), rs.getInt(17), rs.getInt(18), rs.getInt(19), rs.getBinaryStream(20), rs.getDate(21), rs.getString(22), rs.getInt(23), rs.getInt(24), rs.getString(25)));
            }
            System.out.println("in student dao");
            pst.close();
            rs.close();
            con.close();
            return studentBeans;
            
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
        return studentBeans;
	}


	public static int checkPrn(String prnno) {
		
		Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
        
            con = DBConnection.createconnection();
            pst=con.prepareStatement("select studentid from student where prnno=?");
            pst.setString(1, prnno);
            rs = pst.executeQuery(); 
            if(rs.next()){
            	pst.close();
                rs.close();
                con.close();
                return 1;
            }
            
            pst.close();
            rs.close();
            con.close();
            return 0;
            
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
        return 0;
	}


	public static int checkPrnEdit(String prnno) {
		
		Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        int studentId=0;
        try {
        
            con = DBConnection.createconnection();
            
            pst=con.prepareStatement("select studentid from student where prnno=?");
            pst.setString(1, prnno);
            rs = pst.executeQuery();
           
            if(rs.next()){
            	studentId=rs.getInt(1);
            }
            
            pst.close();
            rs.close();
            con.close();
            return studentId;
           
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
        return studentId;
	}

	
}
