package Model.employee;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import Bean.Employee;
import Bean.Student;
import Com.DBConnection;

public class EmployeeDao {
public static int addEmployee(Employee eBean) {
		
		int result=0;
		int key=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			
			PreparedStatement pst=con.prepareStatement("insert into employee (sal,fname,mname,lname,photo,panno,aadharno,paddress,caddress,pstate,state,pcity,city,ppin,cpin,dob,gender,religion,category,caste,mstatus,mobile,email,website,branchid,post,doj,noa,noj)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, eBean.getSal());
			pst.setString(2, eBean.getFname());
			pst.setString(3, eBean.getMname());
			pst.setString(4, eBean.getLname());
			pst.setBlob(5, eBean.getPhoto());
			pst.setString(6, eBean.getPanno());
			pst.setString(7, eBean.getAadharno());
			pst.setString(8, eBean.getPaddress());
			pst.setString(9, eBean.getCaddress());
			pst.setString(10, eBean.getPstate());
			pst.setString(11, eBean.getState());
			pst.setString(12, eBean.getPcity());
			pst.setString(13, eBean.getCity());
			pst.setString(14, eBean.getPpin());
			pst.setString(15, eBean.getCpin());
			pst.setDate(16, eBean.getDob());
			pst.setString(17, eBean.getGender());
			pst.setString(18, eBean.getReligion());
			pst.setString(19, eBean.getCategory());
			pst.setString(20, eBean.getCaste());
			pst.setString(21, eBean.getMstatus());
			pst.setString(22, eBean.getMobile());
			pst.setString(23, eBean.getEmail());
			pst.setString(24, eBean.getWebsite());
			pst.setInt(25, eBean.getBranchId());
			pst.setString(26, eBean.getPost());
			pst.setDate(27, eBean.getDoj());
			pst.setString(28, eBean.getNoa());
			pst.setString(29, eBean.getNoj());
			result=pst.executeUpdate();
			
			ResultSet keys = pst.getGeneratedKeys();    
			keys.next();  
			key = keys.getInt(1);
			
			/*pst=con.prepareStatement("insert into login (username,password,category)values(?,?,?)");
			pst.setString(1, teacherBean.getUsername());
			pst.setString(2, password);
			pst.setString(3, "teacher");
			result=pst.executeUpdate();*/
			pst.close();
			con.close();
			return key;
			
		} catch (SQLException e) {
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
		
		return key;
}

public static int[] addQual(ArrayList<HashMap<String, String>> qual) {
	int result[] = null;
	Connection con=null;
	PreparedStatement pst=null;
	try {
		
		con = DBConnection.createconnection();
		
		pst=con.prepareStatement("insert into employeequal(fid,qname,degree,specialization,institute,university,passyr,per,achievement)values(?,?,?,?,?,?,?,?,?)");
		
		for (HashMap<String, String> q : qual) {
			pst.setInt(1, Integer.parseInt(q.get("fid")));
			pst.setString(2, q.get("qname"));
			pst.setString(3, q.get("degree"));
			pst.setString(4, q.get("spl"));
			pst.setString(5, q.get("inst"));
			pst.setString(6, q.get("univ"));
			pst.setString(7, q.get("pyr"));
			pst.setString(8, q.get("per"));
			pst.setString(9, q.get("achiev"));
			pst.addBatch();
		}
		
		
		result=pst.executeBatch();
		pst.close();
		con.close();
		return result;
		
	} catch (SQLException e) {
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

public static int[] addCert(ArrayList<HashMap<String, String>> cert) {
	int result[] = null;
	Connection con=null;
	PreparedStatement pst=null;
	try {
		
		con = DBConnection.createconnection();
		
		pst=con.prepareStatement("insert into employeecert(fid,coursename,institute,duration,content)values(?,?,?,?,?)");
		
		for (HashMap<String, String> c : cert) {
			pst.setInt(1, Integer.parseInt(c.get("fid")));
			pst.setString(2, c.get("crsname"));
			pst.setString(3, c.get("cinst"));
			pst.setString(4, c.get("cduration"));
			pst.setString(5, c.get("ccontent"));
			
			pst.addBatch();
		}
		
		
		result=pst.executeBatch();
		pst.close();
		con.close();
		return result;
		
	} catch (SQLException e) {
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

public static int addExp(Employee emp) {
	int result=0;
	Connection con=null;
	try {
		
		con = DBConnection.createconnection();
		
		PreparedStatement pst=con.prepareStatement("update employee set eorg=? , eurl=?, edesignation=?,jobprofile=?,fromdate=?,todate=?,achievement=? where fid=?");
		pst.setString(1, emp.getEorg());
		pst.setString(2, emp.getEurl());
		pst.setString(3, emp.getDesignation());
		pst.setString(4, emp.getJobprofile());
		pst.setDate(5,emp.getFromDate());
		pst.setDate(6, emp.getToDate());
		pst.setString(7, emp.getAchievement());
		pst.setInt(8, emp.getFacultyId());
		result=pst.executeUpdate();
		
		pst.close();
		con.close();
		return result;
		
	} catch (SQLException e) {
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

public static int addEmployeeKr(Employee emp) {
	int result=0;
	Connection con=null;
	try {
		
		con = DBConnection.createconnection();
		
		PreparedStatement pst=con.prepareStatement("update employee set headline=?,krcategory=?, publication=?, author=?,krdate=?,krurl=?,article=?,keywords=?,content=?,notes=?,priority=?,guide=?,coguide=?,teamsize=? where fid=?");
		pst.setString(1, emp.getHeadline());
		pst.setString(2, emp.getKrCategory());
		pst.setString(3, emp.getPublication());
		pst.setString(4, emp.getAuthor());
		pst.setDate(5, emp.getDate());
		pst.setString(6, emp.getUrl());
		pst.setBlob(7, emp.getArticle());
		pst.setString(8, emp.getKeywords());
		pst.setString(9, emp.getContent());
		pst.setString(10, emp.getNotes());
		pst.setString(11, emp.getPriority());
		pst.setString(12, emp.getGuide());
		pst.setString(13, emp.getCoguide());
		pst.setString(14, emp.getTeamsize());
		pst.setInt(15, emp.getFacultyId());
		result=pst.executeUpdate();
		
		pst.close();
		con.close();
		return result;
		
	} catch (SQLException e) {
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

public static ArrayList<Employee> getEmployeeByBr(int branchid) {
	Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    ArrayList<Employee> emps=new ArrayList<>();
    try {
    	con = DBConnection.createconnection();
        
    	pst= con.prepareStatement("SELECT e.fid,e.sal,e.fname,e.mname,e.lname,e.panno,e.aadharno,e.paddress,e.caddress,e.pstate,e.state,e.pcity,e.city,e.ppin,e.cpin,e.dob,e.gender,e.religion,e.category,e.caste,e.mstatus,e.mobile,e.email,e.website,br.branchname,e.post,e.doj,e.noa,e.noj,e.eorg,e.eurl,e.edesignation,e.jobprofile,e.fromdate,e.todate,e.achievement FROM  employee AS e INNER JOIN branch AS br ON e.branchid = br.branchid where e.branchid=?");
        pst.setInt(1, branchid);
        rs = pst.executeQuery(); 
        while(rs.next()){
        	emps.add(new Employee(rs.getInt("fid"),
        			rs.getString("sal"),
        			rs.getString("fname"),
        			rs.getString("mname"),
        			rs.getString("lname"),
        			rs.getString("panno"),
        			rs.getString("aadharno"),
        			rs.getString("paddress"),
        			rs.getString("caddress"),
        			rs.getString("pstate"),
        			rs.getString("state"),
        			rs.getString("pcity"),
        			rs.getString("city"),
        			rs.getString("ppin"),
        			rs.getString("cpin"),
        			rs.getDate("dob"),
        			rs.getString("gender"),
        			rs.getString("religion"),
        			rs.getString("category"),
        			rs.getString("caste"),
        			rs.getString("mstatus"),
        			rs.getString("mobile"),
        			rs.getString("email"),
        			rs.getString("website"),
        			rs.getString("branchname"),
        			rs.getString("post"),
        			rs.getDate("doj"),
        			rs.getString("noa"),
        			rs.getString("noj"),
        			rs.getString("eorg"),
        			rs.getString("eurl"),
        			rs.getString("edesignation"),
        			rs.getString("jobprofile"),
        			rs.getDate("fromdate"),
        			rs.getDate("todate"),
        			rs.getString("achievement")));
        	
        }
        pst.close();
        rs.close();
        con.close();
        return emps;
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
    return emps;
}

public static ArrayList<Employee> getEmployeeByName(String fname, String mname, String lname) {
	Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    ArrayList<Employee> emps=new ArrayList<>();
    try {
    	con = DBConnection.createconnection();
        
    	pst= con.prepareStatement("SELECT e.fid,e.sal,e.fname,e.mname,e.lname,e.panno,e.aadharno,e.paddress,e.caddress,e.pstate,e.state,e.pcity,e.city,e.ppin,e.cpin,e.dob,e.gender,e.religion,e.category,e.caste,e.mstatus,e.mobile,e.email,e.website,br.branchname,e.post,e.doj,e.noa,e.noj,e.eorg,e.eurl,e.edesignation,e.jobprofile,e.fromdate,e.todate,e.achievement FROM  employee AS e INNER JOIN branch AS br ON e.branchid = br.branchid where fname=? and mname=? and lname=?");
        pst.setString(1, fname);
        pst.setString(2, mname);
        pst.setString(3, lname);
        rs = pst.executeQuery(); 
        while(rs.next()){
        	emps.add(new Employee(rs.getInt("fid"),
        			rs.getString("sal"),
        			rs.getString("fname"),
        			rs.getString("mname"),
        			rs.getString("lname"),
        			rs.getString("panno"),
        			rs.getString("aadharno"),
        			rs.getString("paddress"),
        			rs.getString("caddress"),
        			rs.getString("pstate"),
        			rs.getString("state"),
        			rs.getString("pcity"),
        			rs.getString("city"),
        			rs.getString("ppin"),
        			rs.getString("cpin"),
        			rs.getDate("dob"),
        			rs.getString("gender"),
        			rs.getString("religion"),
        			rs.getString("category"),
        			rs.getString("caste"),
        			rs.getString("mstatus"),
        			rs.getString("mobile"),
        			rs.getString("email"),
        			rs.getString("website"),
        			rs.getString("branchname"),
        			rs.getString("post"),
        			rs.getDate("doj"),
        			rs.getString("noa"),
        			rs.getString("noj"),
        			rs.getString("eorg"),
        			rs.getString("eurl"),
        			rs.getString("edesignation"),
        			rs.getString("jobprofile"),
        			rs.getDate("fromdate"),
        			rs.getDate("todate"),
        			rs.getString("achievement")));
        	
        }
        pst.close();
        rs.close();
        con.close();
        return emps;
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
    return emps;
}

public static Blob getImage(int facultyId) {
	Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    Blob image =null;
    try {
    
        con = DBConnection.createconnection();
        stmt = con.createStatement();
        String sql = "select photo from employee where fid="+facultyId;
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

}
