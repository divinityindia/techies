package Bean;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.commons.fileupload.FileItem;

public class GalleryBean {

	private int gid;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	private String heading;
	private String details;
	private String page;
	private String path;
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	private HashMap<String,InputStream> images;
	public GalleryBean(String heading, String details,HashMap<String,InputStream> images, String page) {
		super();
		this.heading = heading;
		this.details = details;
		this.images = images;
		this.page=page;
		
		
	}
	
	public GalleryBean() {
		// TODO Auto-generated constructor stub
	}
	public GalleryBean(String heading, String details, String page, String path) {
		super();
		this.heading = heading;
		this.details = details;
		this.page = page;
		this.path = path;
	}
	
	
	public GalleryBean(int gid, String heading, String details) {
		super();
		this.gid = gid;
		this.heading = heading;
		this.details = details;
	}
	public GalleryBean(String page, String heading) {
		this.page = page;
		this.heading = heading;
	}
	public GalleryBean(String heading, String details,int i) {
		this.heading = heading;
		this.details = details;

	}
	public String getHeading() {
		return heading;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public void setHeading(String heading) {
		this.heading = heading;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public HashMap<String, InputStream> getImages() {
		return images;
	}
	public void setImages(HashMap<String, InputStream> images) {
		this.images = images;
	}
	
	
	
}
