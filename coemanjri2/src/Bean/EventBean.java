package Bean;

import java.io.InputStream;

public class EventBean {

	private int eventId;
	private String eventHeading;
	private String eventDetails;
	private String eventLink;
	private String documentName;
	private String documentType;
	private long documentLength;
	
	
	public long getDocumentLength() {
		return documentLength;
	}
	public void setDocumentLength(long documentLength) {
		this.documentLength = documentLength;
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
	private InputStream documentInputStream;
	
	public String getEventHeading() {
		return eventHeading;
	}
	public void setEventHeading(String eventHeading) {
		this.eventHeading = eventHeading;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getEventDetails() {
		return eventDetails;
	}
	public void setEventDetails(String eventDetails) {
		this.eventDetails = eventDetails;
	}
	public String getEventLink() {
		return eventLink;
	}
	public void setEventLink(String eventLink) {
		this.eventLink = eventLink;
	}
	public InputStream getDocumentInputStream() {
		return documentInputStream;
	}
	public void setDocumentInputStream(InputStream documentInputStream) {
		this.documentInputStream = documentInputStream;
	}
	
	
}
