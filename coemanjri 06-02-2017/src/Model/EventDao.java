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
	


public static int addEvent(EventBean bean) {
		
		int result=0;
		Connection con=null;
		try {
			
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into event (branchid,category,eventtitle,organizedby,organizedfor,venue,details,instructions,document,documentname,documenttype,url,contactperson,startdate,starttime,repeatoption,enddate,endtime,status)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setInt(1, bean.getBranchId());
			pst.setString(2, bean.getCategory());
			pst.setString(3, bean.getEventtitle());
			pst.setString(4, bean.getOrganizedby());
			pst.setString(5, bean.getOrganizedfor());
			pst.setString(6, bean.getVenue());
			pst.setString(7, bean.getDetails());
			pst.setString(8, bean.getInstructions());
			pst.setBlob(9, bean.getDocument());
			pst.setString(10, bean.getDocumentName());
			pst.setString(11, bean.getDocumentType());
			pst.setString(12, bean.getUrl());
			pst.setString(13, bean.getContactperson());
			pst.setDate(14, bean.getStartdate());
			pst.setString(15, bean.getStarttime());
			pst.setString(16, bean.getRepeatoption());
			pst.setDate(17, bean.getEnddate());
			pst.setString(18, bean.getEndtime());
			pst.setString(19, bean.getStatus());
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
		PreparedStatement pst=con.prepareStatement("delete from event where eventid in ("+eventIdList+")");
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
        String sql="select eventid,eventheading,eventdetails,documentname,documenttype,documentlength,eventlink from event order by eventid desc";
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
            	
            	/*eventBean.setEventHeading(rs.getString("eventheading"));
            	eventBean.setEventDetails(rs.getString("eventdetails"));
            	eventBean.setEventLink(rs.getString("eventlink"));*/
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
		pst=con.prepareStatement("select document,documentname,documenttype from event where eventid=?");
		pst.setInt(1, eventId);
		rs=pst.executeQuery();
		if(rs.next())
		{
			documentInputStream=rs.getBinaryStream("document");
			documentName=rs.getString("documentname");
			documentType=rs.getString("documenttype");
		}
		eventBean.setDocument(documentInputStream);
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

public static int updateEvent(EventBean bean) {
	int result=0;
	Connection con=null;
	PreparedStatement pst=null;
	try {
		
		con = DBConnection.createconnection();
		if(bean.getDocument()==null)
		{
			pst=con.prepareStatement("update event set branchid=?,category=?,eventtitle=?,organizedby=?,organizedfor=?,venue=?,details=?,instructions=?,url=?,contactperson=?,startdate=?,starttime=?,repeatoption=?,enddate=?,endtime=?,status=? where eventid=?");
			pst.setInt(1, bean.getBranchId());
			pst.setString(2, bean.getCategory());
			pst.setString(3, bean.getEventtitle());
			pst.setString(4, bean.getOrganizedby());
			pst.setString(5, bean.getOrganizedfor());
			pst.setString(6, bean.getVenue());
			pst.setString(7, bean.getDetails());
			pst.setString(8, bean.getInstructions());
			pst.setString(9, bean.getUrl());
			pst.setString(10, bean.getContactperson());
			pst.setDate(11, bean.getStartdate());
			pst.setString(12, bean.getStarttime());
			pst.setString(13, bean.getRepeatoption());
			pst.setDate(14, bean.getEnddate());
			pst.setString(15, bean.getEndtime());
			pst.setString(16, bean.getStatus());
			pst.setInt(17, bean.getEventId());
			result=pst.executeUpdate();
		}
		else
		{
			pst=con.prepareStatement("update event set branchid=?,category=?,eventtitle=?,organizedby=?,organizedfor=?,venue=?,details=?,instructions=?,document=?,documentname=?,documenttype=?,url=?,contactperson=?,startdate=?,starttime=?,repeatoption=?,enddate=?,endtime=?,status=? where eventid=?");
			pst.setInt(1, bean.getBranchId());
			pst.setString(2, bean.getCategory());
			pst.setString(3, bean.getEventtitle());
			pst.setString(4, bean.getOrganizedby());
			pst.setString(5, bean.getOrganizedfor());
			pst.setString(6, bean.getVenue());
			pst.setString(7, bean.getDetails());
			pst.setString(8, bean.getInstructions());
			pst.setBlob(9, bean.getDocument());
			pst.setString(10, bean.getDocumentName());
			pst.setString(11, bean.getDocumentType());
			pst.setString(12, bean.getUrl());
			pst.setString(13, bean.getContactperson());
			pst.setDate(14, bean.getStartdate());
			pst.setString(15, bean.getStarttime());
			pst.setString(16, bean.getRepeatoption());
			pst.setDate(17, bean.getEnddate());
			pst.setString(18, bean.getEndtime());
			pst.setString(19, bean.getStatus());
			pst.setInt(20, bean.getEventId());
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
