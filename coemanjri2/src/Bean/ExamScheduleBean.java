package Bean;

import java.sql.Date;

public class ExamScheduleBean {

	private int examScheduleId;
	private String examName;
	private String className;
	private String sectionName;
	private String subjectName;
	private Date dateofExam;
	private String timeFrom;
	private String timeTo;
	private String room;
	
	public ExamScheduleBean() {
		// TODO Auto-generated constructor stub
	}

	public ExamScheduleBean(int examScheduleId, String examName, String className, String sectionName,
			String subjectName, Date dateofExam, String timeFrom, String timeTo, String room) {
		super();
		this.examScheduleId = examScheduleId;
		this.examName = examName;
		this.className = className;
		this.sectionName = sectionName;
		this.subjectName = subjectName;
		this.dateofExam = dateofExam;
		this.timeFrom = timeFrom;
		this.timeTo = timeTo;
		this.room = room;
	}

	public int getExamScheduleId() {
		return examScheduleId;
	}

	public void setExamScheduleId(int examScheduleId) {
		this.examScheduleId = examScheduleId;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public Date getDateofExam() {
		return dateofExam;
	}

	public void setDateofExam(Date dateofExam) {
		this.dateofExam = dateofExam;
	}

	public String getTimeFrom() {
		return timeFrom;
	}

	public void setTimeFrom(String timeFrom) {
		this.timeFrom = timeFrom;
	}

	public String getTimeTo() {
		return timeTo;
	}

	public void setTimeTo(String timeTo) {
		this.timeTo = timeTo;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}
	
	
}
