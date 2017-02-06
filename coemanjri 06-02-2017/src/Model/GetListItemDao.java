package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

import Bean.EventBean;
import Bean.NewsBean;
import Com.DBConnection;

public class GetListItemDao {

	public static HashMap<String,String> getClassList(){
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from class order by classid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("classid"), rs.getString("classname"));
            }
            statement.close();
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
                con.close();
               }catch(Exception e1){}
		}
        return m;
    
    }
	
	public static HashMap<String,String> getBranchList(){
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from branch order by branchid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("branchid"), rs.getString("branchname"));
            }
            statement.close();
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
               con.close();
              }catch(Exception e1){}
       }
       return m;
    
    }
	
	public static HashMap<String,String> getSectionList(){
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
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
                m.put(rs.getString("sectionid"), rs.getString("sectionname"));
            }
            statement.close();
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
                con.close();
               }catch(Exception e1){}
		}
       
       return m;
    
    }
	
	public static HashMap<String,String> getCourseList(){
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from course order by courseid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("courseid"), rs.getString("coursename"));
            }
            statement.close();
            rs.close();
            con.close();
            return m;
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
       
       return m;
       	
    
    }

	public static HashMap<String, String> getTeacherList() {
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from teacher order by teacherid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("teacherid"), rs.getString("teachername"));
            }
            statement.close();
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
                con.close();
               }catch(Exception e1){}
		}
        return m;
	}

	public static ArrayList<NewsBean> getNewsList() {

		ArrayList<NewsBean> list=new ArrayList<>();
		
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT n.newsid,n.branchid,d.deptname,n.newstitle,n.details,n.url,n.startdate,n.status,n.documentname from news as n left JOIN department AS d ON n.branchid = d.deptid order by n.newsid asc";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            while(rs.next())
            {
                
                String bn=rs.getString("deptname");
                String branchName=null;
                
                if(bn==null)
                {
                	branchName="All";
                }
                else
                {
                	branchName=bn;
                }
                
                /*Date startdate=rs.getDate("startdate");*/
                
                list.add(new NewsBean(rs.getInt("newsid"), rs.getInt("branchid"), branchName, rs.getString("newstitle"), rs.getString("details"), rs.getString("url"), rs.getDate("startdate"),rs.getString("status"),rs.getString("documentname")));
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
	
	public static ArrayList<EventBean> getEventList() {

		ArrayList<EventBean> list=new ArrayList<>();
		
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT e.eventid,e.branchid,d.deptname,e.category,e.eventtitle,e.organizedby,e.organizedfor,e.venue,e.details,e.instructions,e.url,e.contactperson,e.startdate,e.starttime,e.repeatoption,e.endtime,e.enddate,e.status,e.documentname from event as e left JOIN department AS d ON e.branchid = d.deptid order by e.eventid asc";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            while(rs.next())
            {
                
                String bn=rs.getString("deptname");
                String branchName=null;
                
                if(bn==null)
                {
                	branchName="All";
                }
                else
                {
                	branchName=bn;
                }
                
                /*Date startdate=rs.getDate("startdate");*/
                
                list.add(new EventBean(rs.getInt("eventid"), rs.getInt("branchid"), branchName, rs.getString("category"), rs.getString("eventtitle"), rs.getString("organizedby"), rs.getString("organizedfor"), rs.getString("venue"), rs.getString("details"), rs.getString("instructions"), rs.getString("url"), rs.getString("contactperson"),rs.getDate("startdate"),rs.getDate("enddate"),rs.getString("status"),rs.getString("starttime"),rs.getString("repeatoption"),rs.getString("endtime"),rs.getString("documentname")));
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
	
	public static HashMap<String,String> getSubjectList(){
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
       try{
            String sql="SELECT * from subject order by subjectid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("subjectid"), rs.getString("subjectname"));
            }
            statement.close();
            rs.close();
            con.close();
            return m;
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
       
       return m;
    
    }

	public static HashMap<String, String> getExamList() {
		
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT * from exam order by examid";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("examid"), rs.getString("examname"));
            }
            statement.close();
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
                con.close();
               }catch(Exception e1){}
		}
        
        return m;
	}

	public static ArrayList<EventBean> getEventListForIndex() {
		ArrayList<EventBean> list=new ArrayList<>();
		
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT e.eventid,e.branchid,d.deptname,e.category,e.eventtitle,e.organizedby,e.organizedfor,e.venue,e.details,e.instructions,e.url,e.contactperson,e.startdate,e.starttime,e.repeatoption,e.enddate,e.endtime,e.status,e.documentname from event as e left JOIN department AS d ON e.branchid = d.deptid order by e.eventid asc";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            while(rs.next())
            {
                
                String bn=rs.getString("deptname");
                String branchName=null;
                
                if(bn==null)
                {
                	branchName="All";
                }
                else
                {
                	branchName=bn;
                }
                
                
                list.add(new EventBean(rs.getInt("eventid"), rs.getInt("branchid"), branchName, rs.getString("category"), rs.getString("eventtitle"), rs.getString("organizedby"), rs.getString("organizedfor"), rs.getString("venue"), rs.getString("details"), rs.getString("instructions"), rs.getString("url"), rs.getString("contactperson"),rs.getDate("startdate"),rs.getString("starttime"),rs.getString("repeatoption"),rs.getDate("enddate"),rs.getString("endtime"),rs.getString("status"),rs.getString("documentname")));
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
	
	public static ArrayList<NewsBean> getNewsListForIndex() {
		ArrayList<NewsBean> list=new ArrayList<>();
		
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT n.newsid,n.branchid,d.deptname,n.newstitle,n.details,n.url,n.startdate,n.status,n.documentname from news as n left JOIN department AS d ON n.branchid = d.deptid order by n.newsid asc";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            while(rs.next())
            {
                
                String bn=rs.getString("deptname");
                String branchName=null;
                
                if(bn==null)
                {
                	branchName="All";
                }
                else
                {
                	branchName=bn;
                }
                
                
                list.add(new NewsBean(rs.getInt("newsid"), rs.getInt("branchid"), branchName, rs.getString("newstitle"), rs.getString("details"), rs.getString("url"), rs.getDate("startdate"),rs.getString("status"),rs.getString("documentname")));
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

	public static ArrayList<EventBean> getEventListForBranch(String branchName) {
		ArrayList<EventBean> list=new ArrayList<>();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT e.eventid,e.branchid,d.deptname,e.category,e.eventtitle,e.organizedby,e.organizedfor,e.venue,e.details,e.instructions,e.url,e.contactperson,e.startdate,e.starttime,e.repeatoption,e.enddate,e.endtime,e.status,e.documentname from event as e left JOIN department AS d ON e.branchid = d.deptid where d.deptname=? order by e.eventid asc";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            pst.setString(1, branchName);
            rs=pst.executeQuery();
            while(rs.next())
            {
                
                String bn=rs.getString("deptname");
                
                
                list.add(new EventBean(rs.getInt("eventid"), rs.getInt("branchid"), bn, rs.getString("category"), rs.getString("eventtitle"), rs.getString("organizedby"), rs.getString("organizedfor"), rs.getString("venue"), rs.getString("details"), rs.getString("instructions"), rs.getString("url"), rs.getString("contactperson"),rs.getDate("startdate"),rs.getString("starttime"),rs.getString("repeatoption"),rs.getDate("enddate"),rs.getString("endtime"),rs.getString("status"),rs.getString("documentname")));
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

	public static EventBean getSingleEvent(int eventID) {
		EventBean event=new EventBean();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT e.eventid,e.branchid,d.deptname,e.category,e.eventtitle,e.organizedby,e.organizedfor,e.venue,e.details,e.instructions,e.url,e.contactperson,e.startdate,e.starttime,e.repeatoption,e.enddate,e.endtime,e.status,e.documentname from event as e left JOIN department AS d ON e.branchid = d.deptid where e.eventid=?";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            pst.setInt(1, eventID);
            rs=pst.executeQuery();
            if(rs.next())
            {
                String branchName="";
                String bn=rs.getString("deptname");
                if(bn==null)
                {
                	branchName="All";
                }
                else
                {
                	branchName=bn;
                }
                
                event=new EventBean(rs.getInt("eventid"), rs.getInt("branchid"), branchName, rs.getString("category"), rs.getString("eventtitle"), rs.getString("organizedby"), rs.getString("organizedfor"), rs.getString("venue"), rs.getString("details"), rs.getString("instructions"), rs.getString("url"), rs.getString("contactperson"),rs.getDate("startdate"),rs.getString("starttime"),rs.getString("repeatoption"),rs.getDate("enddate"),rs.getString("endtime"),rs.getString("status"),rs.getString("documentname"));
            }
            pst.close();
            rs.close();
            con.close();
            return event;
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
        
        return event;
	}
	
	public static NewsBean getSingleNews(int newsID) {
		NewsBean news=new NewsBean();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs=null;
        try{
            String sql="SELECT n.newsid,n.branchid,d.deptname,n.newstitle,n.details,n.url,n.startdate,n.status,n.documentname from news as n left JOIN department AS d ON n.branchid = d.deptid where n.newsid=?";
            con = DBConnection.createconnection();
            pst=con.prepareStatement(sql);
            pst.setInt(1, newsID);
            rs=pst.executeQuery();
            if(rs.next())
            {
                String branchName="";
                String bn=rs.getString("deptname");
                if(bn==null)
                {
                	branchName="All";
                }
                else
                {
                	branchName=bn;
                }
                
                news=new NewsBean(rs.getInt("newsid"), rs.getInt("branchid"), branchName, rs.getString("newstitle"), rs.getString("details"), rs.getString("url"), rs.getDate("startdate"), rs.getString("status"),rs.getString("documentname"));
            }
            pst.close();
            rs.close();
            con.close();
            return news;
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
        
        return news;
	}

	public static HashMap<String, String> getDeptList() {
		
		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
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
                m.put(rs.getString("deptid"), rs.getString("deptname"));
            }
            statement.close();
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
               con.close();
              }catch(Exception e1){}
       }
       return m;
	}
}