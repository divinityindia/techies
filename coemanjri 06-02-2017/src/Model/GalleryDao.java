package Model;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.NamingException;

import Bean.GalleryBean;
import Com.DBConnection;


public class GalleryDao {

	public static int addAlbum(GalleryBean bean) {
		
		int result[]=null;
		String heading=bean.getHeading();
		String details=bean.getDetails();
		String page=bean.getPage();
		
		
		HashMap<String,InputStream> images=bean.getImages();
		
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into gallery(page,heading,details,imagename,image)values(?,?,?,?,?)");
			for (String key : images.keySet()) {
				pst.setString(1, page);
				pst.setString(2, heading);
				pst.setString(3, details);
				pst.setString(4, key);
				pst.setBlob(5, images.get(key));
				pst.addBatch();
			}
			
			result=pst.executeBatch();
			pst.close();
			con.close();
			return 1;
		} catch (Exception e) {
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
		
		return 0;
	}

	public static ArrayList<GalleryBean> getLoadImages() {
		
		ArrayList<GalleryBean> gbeans=new ArrayList<>();
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("select distinct page from gallery");
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				String page=rs.getString(1);
				pst=con.prepareStatement("select heading from gallery where page=?  limit 1 ");
				pst.setString(1, page);
				ResultSet rs1=pst.executeQuery();
				rs1.next();
				gbeans.add(new GalleryBean(page,rs1.getString(1)));
				
			}
			
			pst.close();
			con.close();
			return gbeans;
			
			
			
		} catch (Exception e) {
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
		return gbeans;
	}

	public static Blob getImage(String page) {
		
		Connection con = null;
        ResultSet rs = null;
        Blob image =null;
        try {
        
            con = DBConnection.createconnection();
            PreparedStatement pst=con.prepareStatement("select image from gallery where page=? limit 1");
            pst.setString(1, page); 
            rs=pst.executeQuery();
            if(rs.next()){
              
            	image = rs.getBlob(1);
              
            }
            
            pst.close();
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

	public static ArrayList<GalleryBean> getHeadings() {
		Connection con=null;
		ArrayList<GalleryBean> gbean=new ArrayList<>();
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("select distinct page from gallery");
			ResultSet rs1=null;
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				String page=rs.getString(1);
				pst=con.prepareStatement("select heading from gallery where page=?  limit 1 ");
				pst.setString(1, page);
				rs1=pst.executeQuery();
				rs1.next();
				gbean.add(new GalleryBean(page, rs1.getString(1)));
				
			}
			rs.close();
			rs1.close();
			pst.close();
			con.close();
			return gbean;
			
			
			
		} catch (Exception e) {
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
		return gbean;
	}

	public static ArrayList<GalleryBean> getId(String page) {
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		ArrayList<GalleryBean> gbean=new ArrayList<>();
		try {
			con = DBConnection.createconnection();
			if(!page.equals("5"))
			{
				pst=con.prepareStatement("select gid,heading,details from gallery where page=?");
				pst.setString(1, page);
				rs=pst.executeQuery();
				while(rs.next())
				{
					gbean.add(new GalleryBean(rs.getInt(1),rs.getString(2),rs.getString(3)));
					
				}
			}
			else
			{
				pst=con.prepareStatement("select heading,details from vgallery limit 1");
				
				rs=pst.executeQuery();
				while(rs.next())
				{
					gbean.add(new GalleryBean(rs.getString(1),rs.getString(2),1));
					
				}
			}
			
			rs.close();
			pst.close();
			con.close();
			return gbean;
			
			
			
		} catch (Exception e) {
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
		return gbean;
	}

	public static Blob getImage(int gid) {
		Connection con = null;
        ResultSet rs = null;
        Blob image =null;
        try {
        
            con = DBConnection.createconnection();
            PreparedStatement pst=con.prepareStatement("select image from gallery where gid=?");
            pst.setInt(1, gid); 
            rs=pst.executeQuery();
            if(rs.next()){
              
            	image = rs.getBlob(1);
              
            }
            
            pst.close();
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

	public static int deleteGallery(String page) {
		int result=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			
			con = DBConnection.createconnection();
			if(!page.equals("5"))
			{
				pst=con.prepareStatement("delete from gallery where page=?");
				pst.setString(1, page);
			}
			else
			{
				pst=con.prepareStatement("delete from vgallery");
			}
			
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

	public static int addVideo(HashMap<String, InputStream> video,String heading,String details) {
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("insert into vgallery(name,video,heading,details)values(?,?,?,?)");
			for (String key : video.keySet()) {
				pst.setString(1, key);
				pst.setBlob(2, video.get(key));
				pst.setString(3, heading);
				pst.setString(4, details);
				pst.addBatch();
			}
			pst.executeBatch();
			pst.close();
			con.close();
			return 1;
		} catch (Exception e) {
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
		
		return 0;
	}

	public static Blob getVideo() {
		Connection con = null;
        ResultSet rs = null;
        Blob video =null;
        try {
        
            con = DBConnection.createconnection();
            PreparedStatement pst=con.prepareStatement("select video from vgallery limit 1");
            rs=pst.executeQuery();
            if(rs.next()){
              
            	video = rs.getBlob(1);
              
            }
            
            pst.close();
            rs.close();
            con.close();
            return video;  
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
        return video;
	}

	public static ArrayList<String> checkGallery() {
		Connection con = null;
        ResultSet rs = null;
        PreparedStatement pst;
        ArrayList<String> list=new ArrayList<>();
        try {
            
            con = DBConnection.createconnection();
            for(int i=1;i<=4;i++)
            {
            	pst=con.prepareStatement("select gid from gallery where page=?");
            	pst.setString(1, i+"");
            	rs=pst.executeQuery();
            	if(rs.next())
            	{
            		list.add(i+"");
            	}
            }
            pst=con.prepareStatement("select vid from vgallery");
            rs=pst.executeQuery();
            if(rs.next()){
            	list.add(5+"");
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

	
}