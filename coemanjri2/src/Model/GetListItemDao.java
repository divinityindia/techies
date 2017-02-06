package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedHashMap;

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

	public static HashMap<String, String> getEventList() {

		LinkedHashMap<String,String> m = new LinkedHashMap<String,String>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs=null;
        try{
            String sql="SELECT eventid,eventheading from newsandevent order by eventid asc";
            con = DBConnection.createconnection();
            statement = con.createStatement(); 
            rs=statement.executeQuery(sql);
            while(rs.next())
            {
                m.put(rs.getString("eventid"), rs.getString("eventheading"));
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
}