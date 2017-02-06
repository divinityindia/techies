package Bean;

import java.io.InputStream;
import java.sql.Date;

public class EventBean {

	private int eventId;
	private int branchId;
	private String branchName;
	private String category;
	private String eventtitle;
	private String organizedby;
	private String organizedfor;
	private String venue;
	private String details;
	private String instructions;
	private InputStream document;
	private String documentName;
	private String documentType;
	private long documentLength;
	private String url;
	private String contactperson;
	private Date startdate;
	private String starttime;
	private String repeatoption;
	private Date enddate;
	private String endtime;
	private String status;
	
	public EventBean() {
		// TODO Auto-generated constructor stub
	}
	
	//constructor for addevent
	public EventBean(int branchId, String category, String eventtitle, String organizedby, String organizedfor,
			String venue, String details, String instructions, InputStream document, String documentName,
			String documentType, long documentLength, String url, String contactperson, Date startdate,
			String starttime, String repeatoption, Date enddate, String endtime, String status) {
		super();
		this.branchId = branchId;
		this.category = category;
		this.eventtitle = eventtitle;
		this.organizedby = organizedby;
		this.organizedfor = organizedfor;
		this.venue = venue;
		this.details = details;
		this.instructions = instructions;
		this.document = document;
		this.documentName = documentName;
		this.documentType = documentType;
		this.documentLength = documentLength;
		this.url = url;
		this.contactperson = contactperson;
		this.startdate = startdate;
		this.starttime = starttime;
		this.repeatoption = repeatoption;
		this.enddate = enddate;
		this.endtime = endtime;
		this.status = status;
	}
	
	
	
	//Constructor for update
	public EventBean(int eventId, int branchId, String category, String eventtitle, String organizedby,
			String organizedfor, String venue, String details, String instructions, InputStream document,
			String documentName, String documentType, long documentLength, String url, String contactperson,
			Date startdate, String starttime, String repeatoption, Date enddate, String endtime, String status) {
		super();
		this.eventId = eventId;
		this.branchId = branchId;
		this.category = category;
		this.eventtitle = eventtitle;
		this.organizedby = organizedby;
		this.organizedfor = organizedfor;
		this.venue = venue;
		this.details = details;
		this.instructions = instructions;
		this.document = document;
		this.documentName = documentName;
		this.documentType = documentType;
		this.documentLength = documentLength;
		this.url = url;
		this.contactperson = contactperson;
		this.startdate = startdate;
		this.starttime = starttime;
		this.repeatoption = repeatoption;
		this.enddate = enddate;
		this.endtime = endtime;
		this.status = status;
	}

	//Constructor for load at admin
	public EventBean(int eventId, int branchId, String branchName, String category, String eventtitle,
			String organizedby, String organizedfor, String venue, String details, String instructions, String url,
			String contactperson,Date startdate,Date enddate,String status,String starttime,String repeatoption,String endtime,String documentName) {
		super();
		this.eventId = eventId;
		this.branchId = branchId;
		this.branchName = branchName;
		this.category = category;
		this.eventtitle = eventtitle;
		this.organizedby = organizedby;
		this.organizedfor = organizedfor;
		this.venue = venue;
		this.details = details;
		this.instructions = instructions;
		this.url = url;
		this.contactperson = contactperson;
		this.startdate=startdate;
		this.enddate=enddate;
		this.status=status;
		this.starttime=starttime;
		this.repeatoption=repeatoption;
		this.endtime=endtime;
		this.documentName=documentName;
	}

	
	//Constructor for Load at index
	public EventBean(int eventId, int branchId, String branchName, String category, String eventtitle,
			String organizedby, String organizedfor, String venue, String details, String instructions, String url,
			String contactperson, Date startdate, String starttime, String repeatoption, Date enddate, String endtime,
			String status,String documentName) {
		super();
		this.eventId = eventId;
		this.branchId = branchId;
		this.branchName = branchName;
		this.category = category;
		this.eventtitle = eventtitle;
		this.organizedby = organizedby;
		this.organizedfor = organizedfor;
		this.venue = venue;
		this.details = details;
		this.instructions = instructions;
		this.url = url;
		this.contactperson = contactperson;
		this.startdate = startdate;
		this.starttime = starttime;
		this.repeatoption = repeatoption;
		this.enddate = enddate;
		this.endtime = endtime;
		this.status = status;
		this.documentName=documentName;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEventtitle() {
		return eventtitle;
	}
	public void setEventtitle(String eventtitle) {
		this.eventtitle = eventtitle;
	}
	public String getOrganizedby() {
		return organizedby;
	}
	public void setOrganizedby(String organizedby) {
		this.organizedby = organizedby;
	}
	public String getOrganizedfor() {
		return organizedfor;
	}
	public void setOrganizedfor(String organizedfor) {
		this.organizedfor = organizedfor;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getInstructions() {
		return instructions;
	}
	public void setInstructions(String instructions) {
		this.instructions = instructions;
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
	public String getContactperson() {
		return contactperson;
	}
	public void setContactperson(String contactperson) {
		this.contactperson = contactperson;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getRepeatoption() {
		return repeatoption;
	}
	public void setRepeatoption(String repeatoption) {
		this.repeatoption = repeatoption;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
