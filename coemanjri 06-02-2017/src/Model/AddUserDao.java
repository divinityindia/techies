package Model;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import Bean.UserBean;
import Com.DBConnection;
import Com.MD5;

public class AddUserDao {

	public static int addUser(UserBean userBean) {
		
		MD5 m=new MD5();
        String password = null;
		try {
			password = m.getpass(userBean.getPassword());
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into users(deptid,category,username,password)values(?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1, userBean.getDeptid());
			pst.setString(2, userBean.getCategory());
			pst.setString(3, userBean.getUsername());
			pst.setString(4, password);
			result=pst.executeUpdate();
			ResultSet rs = pst.getGeneratedKeys();
			int userid=0;
			if(rs.next())
			{
				userid=rs.getInt(1);
			}
			pst=con.prepareStatement("insert into accessrights (userid)values(?)");
			pst.setInt(1, userid);
			pst.executeUpdate();
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

	public static int deleteUser(String[] userIDList) {
		
		int result=0;
		Connection con=null;
		String userId="";
		for (String user : userIDList) {
			userId=userId+","+user;
		}
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from users where userid in ("+userId.substring(1)+")");
			result=pst.executeUpdate();
			if(result!=0)
			{
				pst=con.prepareStatement("delete from accessrights where userid in ("+userId.substring(1)+")");
				pst.executeUpdate();
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

	public static int editUser(UserBean userBean) {
		
		MD5 m=new MD5();
        String password = null;
		try {
			password = m.getpass(userBean.getPassword());
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update users set deptid=?,category=?,username=?,password=? where userid=?");
			pst.setInt(1, userBean.getDeptid());
			pst.setString(2, userBean.getCategory());
			pst.setString(3, userBean.getUsername());
			pst.setString(4, password);
			pst.setInt(5, userBean.getUserid());
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

	public static ArrayList<UserBean> getUserList() {
		
		ArrayList<UserBean> userBeans=new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT u.userid,u.deptid,d.deptname,u.category, u.username,u.password from users as u INNER JOIN department as d on u.deptid=d.deptid order by u.userid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                userBeans.add(new UserBean(rs.getInt(1), rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
            }
            statement.close();
            rs.close();
            con.close();
            return userBeans;
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
       return userBeans;
	}

	public static ArrayList<UserBean> getUsersByDeptCat(int deptid, String category) {
		
		ArrayList<UserBean> userBeans=new ArrayList<>();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT u.userid,u.deptid,d.deptname,u.category, u.username,u.password from users as u INNER JOIN department as d on u.deptid=d.deptid where u.deptid=? and u.category=? order by u.userid";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            pst.setInt(1, deptid);
            pst.setString(2, category);
            rs=pst.executeQuery();
            while(rs.next())
            {
                userBeans.add(new UserBean(rs.getInt(1), rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
            }
            pst.close();
            rs.close();
            con.close();
            return userBeans;
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
       return userBeans;
	}
	
public static int changePassword(int userid,String nusername,String npassword,String squestion,String answer) {
		
		MD5 m=new MD5();
        String password = null;
		try {
			password = m.getpass(npassword);
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update users set username=?,password=?,securityq=?,securityanswer=? where userid=?");
			pst.setString(1, nusername);
			pst.setString(2, password);
			pst.setString(3, squestion);
			pst.setString(4, answer);
			pst.setInt(5, userid);
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

	public static HashMap<String, String> getSquestion(String username) {
		
		HashMap<String, String> m=new HashMap<>();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            con = DBConnection.createconnection();
            pst=con.prepareStatement("select * from users where userid=?");
            pst.setInt(1, 1);
            rs=pst.executeQuery();
            if(rs.next())
            {
            	if(rs.getString("username").equals(username))
            	{
            		m.put("status", "SUCCESS");
                    m.put("userid", rs.getInt("userid")+"");
                    m.put("squestion", rs.getString("securityq"));
                    m.put("answer", rs.getString("securityanswer"));
            	}
            	else
            	{
            		m.put("status", "ERROR");
            	}
            	
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
       		try{
	       		 pst.close();
	             rs.close();
	             con.close();
               }catch(Exception e1){
            	   e1.printStackTrace();
               }
       	}
       return m;
		
	}
	
	
public static int changeAdminPassword(int userid,String npassword) {
		
		MD5 m=new MD5();
        String password = null;
		try {
			password = m.getpass(npassword);
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update users set password=? where userid=?");
			pst.setString(1, password);
			pst.setInt(2, userid);
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