package Bean;

import java.io.InputStream;
import java.sql.Date;

public class NewsBean {

	private int newsId;
	private int branchId;
	private String branchName;
	private String newstitle;
	private String details;
	private InputStream document;
	private String documentName;
	private String documentType;
	private long documentLength;
	private String url;
	private Date startdate;
	private String status;
	
	public NewsBean() {
		// TODO Auto-generated constructor stub
	}
	
	//constructor for addevent
	public NewsBean(int branchId, String newstitle, String details, InputStream document, String documentName,
			String documentType, long documentLength, String url, Date startdate, String status) {
		super();
		this.branchId = branchId;
		this.newstitle = newstitle;
		this.details = details;
		this.document = document;
		this.documentName = documentName;
		this.documentType = documentType;
		this.documentLength = documentLength;
		this.url = url;
		this.startdate = startdate;
		this.status = status;
	}
	
	
	
	//Constructor for update
	public NewsBean(int newsId, int branchId, String newstitle, String details, InputStream document,
			String documentName, String documentType, long documentLength, String url, Date startdate, String status) {
		super();
		this.newsId = newsId;
		this.branchId = branchId;
		this.newstitle = newstitle;
		this.details = details;
		this.document = document;
		this.documentName = documentName;
		this.documentType = documentType;
		this.documentLength = documentLength;
		this.url = url;
		this.startdate = startdate;
		this.status = status;
	}

	//Constructor for load at admin
	public NewsBean(int newsId, int branchId, String branchName, String newstitle, String details, String url, Date startdate, String status) {
		super();
		this.newsId = newsId;
		this.branchId = branchId;
		this.branchName = branchName;
		this.newstitle = newstitle;
		this.details = details;
		this.url = url;
		this.startdate=startdate;
		this.status=status;
	}

	
	//Constructor for Load at index
	public NewsBean(int newsId, int branchId, String branchName, String newstitle, String details, String url, Date startdate, String status, String documentName) {
		super();
		this.newsId = newsId;
		this.branchId = branchId;
		this.branchName = branchName;
		this.newstitle = newstitle;
		this.details = details;
		this.url = url;
		this.startdate = startdate;
		this.status = status;
		this.documentName=documentName;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getNewstitle() {
		return newstitle;
	}

	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public InputStream getDocument() {
		return document;
	}

	public void setDocument(InputStream document) {
		this.document = document;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}

	public long getDocumentLength() {
		return documentLength;
	}

	public void setDocumentLength(long documentLength) {
		this.documentLength = documentLength;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
	
}
