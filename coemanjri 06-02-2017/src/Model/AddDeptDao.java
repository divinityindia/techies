package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.NamingException;

import Bean.DepartmentBean;
import Com.DBConnection;

public class AddDeptDao {

	public static int addDept(DepartmentBean deptBean) {
		PreparedStatement pst=null;
		String departmentName=deptBean.getDeptName();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			pst=con.prepareStatement("insert into department(deptname)values('"+departmentName+"')");
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
				pst.close();
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		return result;
	}

	public static int deleteDept(String[] deptIDList) {
		PreparedStatement pst=null;
		int result=0;
		Connection con=null;
		String deptId="";
		for (String dept : deptIDList) {
			deptId=deptId+","+dept;
		}
		
		try {
			con = DBConnection.createconnection();
			pst=con.prepareStatement("delete from department where deptid in ("+deptId.substring(1)+")");
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
				pst.close();
				con.close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return result;
	}

	public static int editDept(DepartmentBean deptBean) {
		
		String deptName=deptBean.getDeptName();
		int deptId=deptBean.getDeptid();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update department set deptname=? where deptid=?");
			pst.setString(1, deptName);
			pst.setInt(2, deptId);
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

	public static ArrayList<DepartmentBean> getDeptList() {
		
		ArrayList<DepartmentBean> deptBeans=new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from department order by deptid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                deptBeans.add(new DepartmentBean(rs.getInt(1), rs.getString(2)));
            }
            statement.close();
            rs.close();
            con.close();
            return deptBeans;
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
       return deptBeans;
	}
}
