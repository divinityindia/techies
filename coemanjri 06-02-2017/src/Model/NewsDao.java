package Model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import Bean.EventBean;
import Bean.NewsBean;
import Com.DBConnection;

public class NewsDao {
	


public static int addNews(NewsBean bean) {
		
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into news (branchid,newstitle,details,document,documentname,documenttype,url,startdate,status)values(?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getBranchId());
			pst.setString(2, bean.getNewstitle());
			pst.setString(3, bean.getDetails());
			pst.setBlob(4, bean.getDocument());
			pst.setString(5, bean.getDocumentName());
			pst.setString(6, bean.getDocumentType());
			pst.setString(7, bean.getUrl());
			pst.setDate(8, bean.getStartdate());
			pst.setString(9, bean.getStatus());
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

public static int deleteNews(String newsIdList) {
	
	int result=0;
	Connection con=null;
	try {
		
		con = DBConnection.createconnection();
		PreparedStatement pst=con.prepareStatement("delete from news where newsid in ("+newsIdList+")");
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

public static NewsBean getDocument(int newsId) {
	
	NewsBean newsBean=new NewsBean();
	InputStream documentInputStream=null;
	String documentName=null;
	String documentType = null;
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	try {
		
		con = DBConnection.createconnection();
		pst=con.prepareStatement("select document,documentname,documenttype from news where newsid=?");
		pst.setInt(1, newsId);
		rs=pst.executeQuery();
		if(rs.next())
		{
			documentInputStream=rs.getBinaryStream("document");
			documentName=rs.getString("documentname");
			documentType=rs.getString("documenttype");
		}
		newsBean.setDocument(documentInputStream);
		newsBean.setDocumentName(documentName);
		newsBean.setDocumentType(documentType);
		pst.close();
		con.close();
		return newsBean;
		
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
	return newsBean;
	
}

public static int updateNews(NewsBean bean) {
	int result=0;
	Connection con=null;
	PreparedStatement pst=null;
	try {
		con = DBConnection.createconnection();
		if(bean.getDocument()==null)
		{
			pst=con.prepareStatement("update news set branchid=?,newstitle=?,details=?,url=?,startdate=?,status=? where newsid=?");
			pst.setInt(1, bean.getBranchId());
			pst.setString(2, bean.getNewstitle());
			pst.setString(3, bean.getDetails());
			pst.setString(4, bean.getUrl());
			pst.setDate(5, bean.getStartdate());
			pst.setString(6, bean.getStatus());
			pst.setInt(7, bean.getNewsId());
			result=pst.executeUpdate();
		}
		else
		{
			pst=con.prepareStatement("update news set branchid=?,newstitle=?,details=?,document=?,documentname=?,documenttype=?,url=?,startdate=?,status=? where newsid=?");
			pst.setInt(1, bean.getBranchId());
			pst.setString(2, bean.getNewstitle());
			pst.setString(3, bean.getDetails());
			pst.setBlob(4, bean.getDocument());
			pst.setString(5, bean.getDocumentName());
			pst.setString(6, bean.getDocumentType());
			pst.setString(7, bean.getUrl());
			pst.setDate(8, bean.getStartdate());
			pst.setString(9, bean.getStatus());
			pst.setInt(10, bean.getNewsId());
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

}
