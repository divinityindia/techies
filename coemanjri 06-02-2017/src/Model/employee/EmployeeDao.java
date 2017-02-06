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
import Bean.EmployeeExp;
import Com.DBConnection;

public class EmployeeDao {
public static int addEmployee(Employee eBean) {
		
		int result=0;
		int key=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			
			PreparedStatement pst=con.prepareStatement("insert into employee (sal,fname,mname,lname,photo,bcud,panno,aadharno,paddress,caddress,pstate,state,pcity,city,ppin,cpin,dob,gender,religion,category,caste,mstatus,mobile,email,website,branchid,post,doj,noa,noj)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, eBean.getSal());
			pst.setString(2, eBean.getFname());
			pst.setString(3, eBean.getMname());
			pst.setString(4, eBean.getLname());
			pst.setBlob(5, eBean.getPhoto());
			pst.setString(6, eBean.getBcud());
			pst.setString(7, eBean.getPanno());
			pst.setString(8, eBean.getAadharno());
			pst.setString(9, eBean.getPaddress());
			pst.setString(10, eBean.getCaddress());
			pst.setString(11, eBean.getPstate());
			pst.setString(12, eBean.getState());
			pst.setString(13, eBean.getPcity());
			pst.setString(14, eBean.getCity());
			pst.setString(15, eBean.getPpin());
			pst.setString(16, eBean.getCpin());
			pst.setDate(17, eBean.getDob());
			pst.setString(18, eBean.getGender());
			pst.setString(19, eBean.getReligion());
			pst.setString(20, eBean.getCategory());
			pst.setString(21, eBean.getCaste());
			pst.setString(22, eBean.getMstatus());
			pst.setString(23, eBean.getMobile());
			pst.setString(24, eBean.getEmail());
			pst.setString(25, eBean.getWebsite());
			pst.setInt(26, eBean.getBranchId());
			pst.setString(27, eBean.getPost());
			pst.setDate(28, eBean.getDoj());
			pst.setString(29, eBean.getNoa());
			pst.setString(30, eBean.getNoj());
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

public static int addExp(EmployeeExp emp) {
	int result=0;
	Connection con=null;
	try {
		
		con = DBConnection.createconnection();
		
		PreparedStatement pst=con.prepareStatement("insert into employeeexp (fid,eorg, eurl,edesignation,jobprofile,fromdate,todate,achievement)values(?,?,?,?,?,?,?,?)");
		pst.setInt(1, emp.getFacultyId());
		pst.setString(2, emp.getEorg());
		pst.setString(3, emp.getEurl());
		pst.setString(4, emp.getDesignation());
		pst.setString(5, emp.getJobprofile());
		pst.setDate(6,emp.getFromDate());
		pst.setDate(7, emp.getToDate());
		pst.setString(8, emp.getAchievement());
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
		
		PreparedStatement pst=con.prepareStatement("insert into employeekr (fid,headline,krcategory,publication,author,krdate,krurl,article,documentName,documentType,documentLength,keywords,content,notes,priority,guide,coguide,teamsize)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setInt(1, emp.getFacultyId());
		pst.setString(2, emp.getHeadline());
		pst.setString(3, emp.getKrCategory());
		pst.setString(4, emp.getPublication());
		pst.setString(5, emp.getAuthor());
		pst.setDate(6, emp.getDate());
		pst.setString(7, emp.getUrl());
		pst.setBlob(8, emp.getArticle());
		pst.setString(9, emp.getDocumentName());
		pst.setString(10, emp.getDocumentType());
		pst.setLong(11, emp.getDocumentLength());
		pst.setString(12, emp.getKeywords());
		pst.setString(13, emp.getContent());
		pst.setString(14, emp.getNotes());
		pst.setString(15, emp.getPriority());
		pst.setString(16, emp.getGuide());
		pst.setString(17, emp.getCoguide());
		pst.setString(18, emp.getTeamsize());
		
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
        
    	pst= con.prepareStatement("SELECT e.fid,e.sal,e.fname,e.mname,e.lname,e.bcud,e.panno,e.aadharno,e.paddress,e.caddress,e.pstate,e.state,e.pcity,e.city,e.ppin,e.cpin,e.dob,e.gender,e.religion,e.category,e.caste,e.mstatus,e.mobile,e.email,e.website,d.deptname,e.post,e.doj,e.noa,e.noj FROM  employee AS e INNER JOIN department AS d ON e.branchid = d.deptid where e.branchid=?");
        pst.setInt(1, branchid);
        rs = pst.executeQuery(); 
        while(rs.next()){
        	emps.add(new Employee(rs.getInt("fid"),
        			rs.getString("sal"),
        			rs.getString("fname"),
        			rs.getString("mname"),
        			rs.getString("lname"),
        			rs.getString("bcud"),
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
        			rs.getString("deptname"),
        			rs.getString("post"),
        			rs.getDate("doj"),
        			rs.getString("noa"),
        			rs.getString("noj")));
        	
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

public static ArrayList<Employee> getHod() {
	Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    ArrayList<Employee> emps=new ArrayList<>();
    try {
    	con = DBConnection.createconnection();
        
    	pst= con.prepareStatement("SELECT e.fid,e.sal,e.fname,e.mname,e.lname,e.email,d.deptname FROM  employee AS e INNER JOIN department AS d ON e.branchid = d.deptid where e.post=?");
        pst.setString(1, "HOD");
        rs = pst.executeQuery(); 
        while(rs.next()){
        	emps.add(new Employee(rs.getInt("fid"),
        			rs.getString("sal"),
        			rs.getString("fname"),
        			rs.getString("mname"),
        			rs.getString("lname"),
        			rs.getString("email"),
        			rs.getString("deptname")
        			));
        	
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
        
    	pst= con.prepareStatement("SELECT e.fid,e.sal,e.fname,e.mname,e.lname,e.bcud,e.panno,e.aadharno,e.paddress,e.caddress,e.pstate,e.state,e.pcity,e.city,e.ppin,e.cpin,e.dob,e.gender,e.religion,e.category,e.caste,e.mstatus,e.mobile,e.email,e.website,d.deptname,e.post,e.doj,e.noa,e.noj FROM  employee AS e INNER JOIN department AS d ON e.branchid = d.deptid where fname=? and mname=? and lname=?");
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
        			rs.getString("bcud"),
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
        			rs.getString("deptname"),
        			rs.getString("post"),
        			rs.getDate("doj"),
        			rs.getString("noa"),
        			rs.getString("noj")));
        	
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

public static int updateEmployee(Employee eBean, String changePhoto) {
	
	int result=0;
	Connection con=null;
	PreparedStatement pst=null;
	try {
		
		con = DBConnection.createconnection();
		if(changePhoto!=null)
		{
			System.out.println("In photo");
			pst=con.prepareStatement("update employee set sal=?,fname=?,mname=?,lname=?,photo=?,panno=?,aadharno=?,paddress=?,caddress=?,pstate=?,state=?,pcity=?,city=?,ppin=?,cpin=?,dob=?,gender=?,religion=?,category=?,caste=?,mstatus=?,mobile=?,email=?,website=?,branchid=?,post=?,doj=?,noa=?,noj=?,bcud=? where fid=?");
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
			pst.setString(30, eBean.getBcud());
			pst.setInt(31, eBean.getFacultyId());
			result=pst.executeUpdate();
		
		}
		
		else
			{
			System.out.println("Not in photo");
			pst=con.prepareStatement("update employee set sal=?,fname=?,mname=?,lname=?,panno=?,aadharno=?,paddress=?,caddress=?,pstate=?,state=?,pcity=?,city=?,ppin=?,cpin=?,dob=?,gender=?,religion=?,category=?,caste=?,mstatus=?,mobile=?,email=?,website=?,branchid=?,post=?,doj=?,noa=?,noj=?,bcud=? where fid=?");
			pst.setString(1, eBean.getSal());
			pst.setString(2, eBean.getFname());
			pst.setString(3, eBean.getMname());
			pst.setString(4, eBean.getLname());
			pst.setString(5, eBean.getPanno());
			pst.setString(6, eBean.getAadharno());
			pst.setString(7, eBean.getPaddress());
			pst.setString(8, eBean.getCaddress());
			pst.setString(9, eBean.getPstate());
			pst.setString(10, eBean.getState());
			pst.setString(11, eBean.getPcity());
			pst.setString(12, eBean.getCity());
			pst.setString(13, eBean.getPpin());
			pst.setString(14, eBean.getCpin());
			pst.setDate(15,eBean.getDob());
			pst.setString(16, eBean.getGender());
			pst.setString(17, eBean.getReligion());
			pst.setString(18, eBean.getCategory());
			pst.setString(19, eBean.getCaste());
			pst.setString(20, eBean.getMstatus());
			pst.setString(21, eBean.getMobile());
			pst.setString(22, eBean.getEmail());
			pst.setString(23, eBean.getWebsite());
			pst.setInt(24, eBean.getBranchId());
			pst.setString(25, eBean.getPost());
			pst.setDate(26, eBean.getDoj());
			pst.setString(27, eBean.getNoa());
			pst.setString(28, eBean.getNoj());
			pst.setString(29, eBean.getBcud());
			pst.setInt(30, eBean.getFacultyId());
			result=pst.executeUpdate();
			}
		
		
		
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

	public static ArrayList<HashMap<String, String>> getQual(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<HashMap<String, String>> list=new ArrayList<>();
	    HashMap<String, String> m=null;
	    try {
	    
	        con = DBConnection.createconnection();
	        pst = con.prepareStatement("select * from employeequal where fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery(); 
	        while(rs.next()){
	          
	        	m=new HashMap<>();
	        	m.put("qid", rs.getInt("qid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("qname", rs.getString("qname"));
	        	m.put("qdegree", rs.getString("degree"));
	        	m.put("qspecialization", rs.getString("specialization"));
	        	m.put("qinstitute", rs.getString("institute"));
	        	m.put("quniversity", rs.getString("university"));
	        	m.put("qpassyr", rs.getString("passyr"));
	        	m.put("qper", rs.getString("per"));
	        	m.put("qachievement", rs.getString("achievement"));
	        	list.add(m);
	          
	        }
	        
	        
	        pst.close();
	        rs.close();
	        con.close();
	        return list;  
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
	    return list;
	}
	
	public static ArrayList<HashMap<String, String>> getCert(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<HashMap<String, String>> list=new ArrayList<>();
	    HashMap<String, String> m=null;
	    try {
	    
	        con = DBConnection.createconnection();
	        pst = con.prepareStatement("select * from employeecert where fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery(); 
	        while(rs.next()){
	          
	        	m=new HashMap<>();
	        	m.put("cid", rs.getInt("cid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("ccoursename", rs.getString("coursename"));
	        	m.put("cinstitute", rs.getString("institute"));
	        	m.put("cduration", rs.getString("duration"));
	        	m.put("ccontent", rs.getString("content"));
	        	list.add(m);
	          
	        }
	        
	        pst.close();
	        rs.close();
	        con.close();
	        return list;  
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
	    return list;
	}

	public static ArrayList<HashMap<String, String>> getKr(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<HashMap<String, String>> list=new ArrayList<>();
	    HashMap<String, String> m=null;
	    try {
	    
	        con = DBConnection.createconnection();
	        pst = con.prepareStatement("select k.krid,k.fid,e.mname,e.lname,e.fname,e.sal,k.headline,k.krcategory,k.publication,k.author,k.krdate,k.krurl,k.documentName,k.keywords,k.content,k.notes,k.priority,k.guide,k.coguide,k.teamsize FROM employeekr AS k INNER JOIN employee AS e ON k.fid = e.fid where k.fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery(); 
	        while(rs.next()){
	          
	        	m=new HashMap<>();
	        	m.put("krid", rs.getInt("krid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("manme", rs.getString("mname"));
	        	m.put("lname", rs.getString("lname"));
	        	m.put("fname", rs.getString("fname"));
	        	m.put("sal", rs.getString("sal"));
	        	m.put("headline", rs.getString("headline"));
	        	m.put("krcategory", rs.getString("krcategory"));
	        	m.put("publication", rs.getString("publication"));
	        	m.put("author", rs.getString("author"));
	        	m.put("krdate", rs.getString("krdate"));
	        	m.put("krurl", rs.getString("krurl"));
	        	m.put("documentName", rs.getString("documentName"));
	        	m.put("keywords", rs.getString("keywords"));
	        	m.put("content", rs.getString("content"));
	        	m.put("notes", rs.getString("notes"));
	        	m.put("priority", rs.getString("priority"));
	        	m.put("guide", rs.getString("guide"));
	        	m.put("coguide", rs.getString("coguide"));
	        	m.put("teamsize", rs.getString("teamsize"));
	        	list.add(m);
	          
	        }
	        
	        pst.close();
	        rs.close();
	        con.close();
	        return list;  
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
	    return list;
	}
	
	
	public static ArrayList<HashMap<String, String>> getAllKr() {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<HashMap<String, String>> list=new ArrayList<>();
	    HashMap<String, String> m=null;
	    try {
	    
	        con = DBConnection.createconnection();
	        pst = con.prepareStatement("select k.krid,k.fid,e.mname,e.lname,e.fname,e.sal,k.headline,k.krcategory,k.publication,k.author,k.krdate,k.krurl,k.documentName,k.keywords,k.content,k.notes,k.priority,k.guide,k.coguide,k.teamsize FROM employeekr AS k INNER JOIN employee AS e ON k.fid = e.fid");
	        rs = pst.executeQuery(); 
	        while(rs.next()){
	          
	        	m=new HashMap<>();
	        	m.put("krid", rs.getInt("krid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("manme", rs.getString("mname"));
	        	m.put("lname", rs.getString("lname"));
	        	m.put("fname", rs.getString("fname"));
	        	m.put("sal", rs.getString("sal"));
	        	m.put("headline", rs.getString("headline"));
	        	m.put("krcategory", rs.getString("krcategory"));
	        	m.put("publication", rs.getString("publication"));
	        	m.put("author", rs.getString("author"));
	        	m.put("krdate", rs.getString("krdate"));
	        	m.put("krurl", rs.getString("krurl"));
	        	m.put("documentName", rs.getString("documentName"));
	        	m.put("keywords", rs.getString("keywords"));
	        	m.put("content", rs.getString("content"));
	        	m.put("notes", rs.getString("notes"));
	        	m.put("priority", rs.getString("priority"));
	        	m.put("guide", rs.getString("guide"));
	        	m.put("coguide", rs.getString("coguide"));
	        	m.put("teamsize", rs.getString("teamsize"));
	        	list.add(m);
	        }
	        
	        pst.close();
	        rs.close();
	        con.close();
	        return list;  
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
	    return list;
	}

	public static HashMap<String, Object> getDocument(int krid) {
		
		HashMap<String, Object> m=new HashMap<>();
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			
			con = DBConnection.createconnection();
			pst=con.prepareStatement("select article,documentName,documentType from employeekr where krid=?");
			pst.setInt(1, krid);
			rs=pst.executeQuery();
			if(rs.next())
			{
				m.put("article", rs.getBinaryStream("article"));
				m.put("documentName", rs.getString("documentName"));
	        	m.put("documentType", rs.getString("documentType"));
			}
			pst.close();
			con.close();
			return m;
			
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
		return m;
	}

	public static ArrayList<EmployeeExp> getExp(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    ArrayList<EmployeeExp> list=new ArrayList<>();
	    
	    try {
	    
	        con = DBConnection.createconnection();
	        pst = con.prepareStatement("select * from employeeexp where fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery(); 
	        while(rs.next()){
	        	
	        	list.add(new EmployeeExp(rs.getString("eorg"),rs.getString("edesignation"),rs.getString("eurl"),rs.getString("jobprofile"),rs.getDate("fromdate"),rs.getDate("todate"),rs.getString("achievement"),rs.getInt("expid")));
	        }
	        
	        pst.close();
	        rs.close();
	        con.close();
	        return list;  
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
	    return list;
	}

	public static Employee getEmployeeById(int fid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    Employee emp=null;
	    try {
	    	con = DBConnection.createconnection();
	    	pst= con.prepareStatement("SELECT e.fid,e.sal,e.fname,e.mname,e.lname,e.bcud,e.panno,e.aadharno,e.paddress,e.caddress,e.pstate,e.state,e.pcity,e.city,e.ppin,e.cpin,e.dob,e.gender,e.religion,e.category,e.caste,e.mstatus,e.mobile,e.email,e.website,d.deptname,e.post,e.doj,e.noa,e.noj FROM  employee AS e INNER JOIN department AS d ON e.branchid = d.deptid where e.fid=?");
	        pst.setInt(1, fid);
	        rs = pst.executeQuery(); 
	        while(rs.next()){
	        	emp=new Employee(rs.getInt("fid"),
	        			rs.getString("sal"),
	        			rs.getString("fname"),
	        			rs.getString("mname"),
	        			rs.getString("lname"),
	        			rs.getString("bcud"),
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
	        			rs.getString("deptname"),
	        			rs.getString("post"),
	        			rs.getDate("doj"),
	        			rs.getString("noa"),
	        			rs.getString("noj"));
	        	
	        }
	        pst.close();
	        rs.close();
	        con.close();
	        return emp;
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
	    return emp;
	}

	public static int deleteQual(int qid) {
		
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from employeequal where qid=?");
			pst.setInt(1, qid);
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
	
	public static int deleteCert(int cid) {
		
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from employeecert where cid=?");
			pst.setInt(1, cid);
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
	
	public static int deleteExp(int expid) {
		
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from employeeexp where expid=?");
			pst.setInt(1, expid);
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
	
	public static int deleteKr(int krid) {
		
		int result=0;
		Connection con=null;
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from employeekr where krid=?");
			pst.setInt(1, krid);
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

	public static HashMap<String, String> getSingleKr(int krid) {
		Connection con = null;
	    PreparedStatement pst = null;
	    ResultSet rs = null;
	    HashMap<String, String> m=null;
	    try {
	    
	        con = DBConnection.createconnection();
	        pst = con.prepareStatement("select * from employeekr where krid=?");
	        pst.setInt(1, krid);
	        rs = pst.executeQuery(); 
	        if(rs.next()){
	          
	        	m=new HashMap<>();
	        	m.put("krid", rs.getInt("krid")+"");
	        	m.put("fid", rs.getInt("fid")+"");
	        	m.put("headline", rs.getString("headline"));
	        	m.put("krcategory", rs.getString("krcategory"));
	        	m.put("publication", rs.getString("publication"));
	        	m.put("author", rs.getString("author"));
	        	m.put("krdate", rs.getString("krdate"));
	        	m.put("krurl", rs.getString("krurl"));
	        	m.put("documentName", rs.getString("documentName"));
	        	m.put("keywords", rs.getString("keywords"));
	        	m.put("content", rs.getString("content"));
	        	m.put("notes", rs.getString("notes"));
	        	m.put("priority", rs.getString("priority"));
	        	m.put("guide", rs.getString("guide"));
	        	m.put("coguide", rs.getString("coguide"));
	        	m.put("teamsize", rs.getString("teamsize"));
	        	
	        }
	        
	        pst.close();
	        rs.close();
	        con.close();
	        return m;  
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
	    return m;
	}

}
