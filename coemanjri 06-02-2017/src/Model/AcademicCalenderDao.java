package Model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import Bean.AcademicCalenderBean;
import Bean.NewsBean;
import Com.DBConnection;

public class AcademicCalenderDao {

	public static int addAc(AcademicCalenderBean acbean) {
		String branch=acbean.getBranch();
		String class1=acbean.getClass1();
		InputStream document=acbean.getIs();
		String documentName=acbean.getDocumentName();
		String documentType=acbean.getDocumentType();
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into academiccalender(branch,class,document,documentname,documenttype)values(?,?,?,?,?)");
			pst.setString(1, branch);
			pst.setString(2, class1);
			pst.setBlob(3, document);
			pst.setString(4, documentName);
			pst.setString(5, documentType);
			
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

	public static int updateAc(AcademicCalenderBean acbean) {
		PreparedStatement pst=null;
		String branch=acbean.getBranch();
		String class1=acbean.getClass1();
		InputStream document=acbean.getIs();
		String documentName=acbean.getDocumentName();
		String documentType=acbean.getDocumentType();
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			if(document==null)
			{
				pst=con.prepareStatement("update academiccalender set branch=?,class=? where acid=?");
				pst.setString(1, branch);
				pst.setString(2, class1);
				pst.setInt(3, acbean.getAcid());
				result=pst.executeUpdate();
			}
			else
			{
				pst=con.prepareStatement("update academiccalender set branch=?,class=?,document=?,documentname=?,documenttype=? where acid=?");
				pst.setString(1, branch);
				pst.setString(2, class1);
				pst.setBlob(3, document);
				pst.setString(4, documentName);
				pst.setString(5, documentType);
				pst.setInt(6, acbean.getAcid());
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

	public static int deleteAc(String acIdList) {
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("delete from academiccalender where acid in ("+acIdList+")");
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

	public static ArrayList<AcademicCalenderBean> getAcList() {
		ArrayList<AcademicCalenderBean> list=new ArrayList<>();
		
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from academiccalender";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            while(rs.next())
            {
                list.add(new AcademicCalenderBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBinaryStream(4), rs.getString(5), rs.getString(6)));
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
        finally{
        	
        	try{
                con.close();
               }catch(Exception e1){}
        }
        
        return list;
	}




public static AcademicCalenderBean getDocument(int acid) {
	
	AcademicCalenderBean bean=new AcademicCalenderBean();
	InputStream documentInputStream=null;
	String documentName=null;
	String documentType = null;
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	try {
		
		con = DBConnection.createconnection();
		pst=con.prepareStatement("select document,documentname,documenttype from academiccalender where acid=?");
		pst.setInt(1, acid);
		rs=pst.executeQuery();
		if(rs.next())
		{
			documentInputStream=rs.getBinaryStream("document");
			documentName=rs.getString("documentname");
			documentType=rs.getString("documenttype");
		}
		bean.setIs(documentInputStream);
		bean.setDocumentName(documentName);
		bean.setDocumentType(documentType);
		pst.close();
		con.close();
		return bean;
		
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
	return bean;
	
}
}
