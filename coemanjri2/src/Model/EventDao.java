package Model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.StringTokenizer;

import javax.naming.NamingException;

import Bean.EventBean;
import Bean.SubjectBean;
import Com.DBConnection;

public class EventDao {
	


public static int addEvent(EventBean eventBean) {
		
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into newsandevent (eventheading,eventdetails,document,documentname,documenttype,documentlength,eventlink)values(?,?,?,?,?,?,?)");
			pst.setString(1, eventBean.getEventHeading());
			pst.setString(2, eventBean.getEventDetails());
			pst.setBlob(3, eventBean.getDocumentInputStream());
			pst.setString(4, eventBean.getDocumentName());
			pst.setString(5, eventBean.getDocumentType());
			pst.setLong(6, eventBean.getDocumentLength());
			pst.setString(7, eventBean.getEventLink());
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

public static int deleteEvents(String eventIdList) {
	
	int result=0;
	Connection con=null;
	try {
		
		con = DBConnection.createconnection();
		PreparedStatement pst=con.prepareStatement("delete from newsandevent where eventid in ("+eventIdList+")");
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

public static EventBean[] getEventList() {
	
	
	EventBean[] arrayBeans = null;
	Connection con=null;
	Statement statement=null;
	ResultSet rs=null;
	
	try {
		
        con = DBConnection.createconnection();
        statement = con.createStatement(); 
        String sql="select eventid,eventheading,eventdetails,documentname,documenttype,documentlength,eventlink from newsandevent order by eventid desc";
        rs=statement.executeQuery(sql);
        int i=0;
        rs.last();
        int rows = rs.getRow();
        rs.beforeFirst();
        
        if(rows!=0)
        {
        	arrayBeans = new EventBean[rows];
            while(rs.next())
            {	
            	EventBean eventBean=new EventBean();
            	long documentLength=rs.getLong("documentlength");
            	if(documentLength==0)
            	{
            		eventBean.setEventId(0);
            	}
            	else
            	{	System.out.println(rs.getInt("eventid"));
            		eventBean.setEventId(rs.getInt("eventid"));
            	}
            	
            	System.out.println(rs.getString("eventheading"));
            	System.out.println(rs.getString("eventdetails"));
            	System.out.println(rs.getString("eventlink"));
            	System.out.println(documentLength);
            	
            	eventBean.setEventHeading(rs.getString("eventheading"));
            	eventBean.setEventDetails(rs.getString("eventdetails"));
            	eventBean.setEventLink(rs.getString("eventlink"));
            	eventBean.setDocumentLength(documentLength);
            	arrayBeans[i]=eventBean;
            	i++;
            }
        }
        
        statement.close();
        rs.close();
        con.close();
        return arrayBeans;
		
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
	
	return arrayBeans;
	
}

public static EventBean getDocument(int eventId) {
	
	EventBean eventBean=new EventBean();
	InputStream documentInputStream=null;
	String documentName=null;
	String documentType = null;
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	try {
		
		con = DBConnection.createconnection();
		pst=con.prepareStatement("select document,documentname,documenttype from newsandevent where eventid=?");
		pst.setInt(1, eventId);
		rs=pst.executeQuery();
		if(rs.next())
		{
			documentInputStream=rs.getBinaryStream("document");
			documentName=rs.getString("documentname");
			documentType=rs.getString("documenttype");
		}
		eventBean.setDocumentInputStream(documentInputStream);
		eventBean.setDocumentName(documentName);
		eventBean.setDocumentType(documentType);
		pst.close();
		con.close();
		return eventBean;
		
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
	return eventBean;
	
}

}
