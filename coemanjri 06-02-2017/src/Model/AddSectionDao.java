package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.naming.NamingException;

import Bean.SectionBean;
import Bean.SectionBean1;
import Com.DBConnection;

public class AddSectionDao {

	public static int addSection(SectionBean1 sectionBean1) {
		String sectionName=sectionBean1.getSectionName();
		//String category=sectionBean.getCategory();
		//int classId=sectionBean.getClassid();
		//int teacherId=sectionBean.getTeacherId();
		String note=sectionBean1.getNote();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into section(sectionname,note)values('"+sectionName+"','"+note+"')");
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException | NamingException e) {
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

	public static int deleteSection(String[] sectionIDList) {
		
		int result=0;
		Connection con=null;
		String sectionId="";
		for (String section : sectionIDList) {
			sectionId=sectionId+","+section;
		}
		
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from section where sectionid in ("+sectionId.substring(1)+")");
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

	public static int editSection(SectionBean1 sectionBean1) {
		
		String sectionName=sectionBean1.getSectionName();
		//String category=sectionBean.getCategory();
		//int classId=sectionBean.getClassid();
		//int teacherId=sectionBean.getTeacherId();
		String note=sectionBean1.getNote();
		int sectionId=sectionBean1.getSectionid();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update section set sectionname=?, note=? where sectionid=?");
			pst.setString(1, sectionName);
			pst.setString(2, note);
			pst.setInt(3, sectionId);
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

	public static ArrayList<SectionBean> getSectionList() {
		
		ArrayList<SectionBean> sectionBeans=new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from section order by sectionid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
            	sectionBeans.add(new SectionBean(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
            statement.close();
            rs.close();
            con.close();
            return sectionBeans;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally {
        	try{
                con.close();
               }catch(Exception e1){e1.printStackTrace();}
		}
        return sectionBeans;
	}
}
