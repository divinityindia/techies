package Bean;

public class RoutineBean {

	private int routineId;
	private String course;
	private String branch;
	private String class1;
	private String section;
	private String subject;
	private String day;
	private String timeFrom;
	private String timeto;
	private String room;
	
	
	
	public RoutineBean(int routineId, String timeFrom, String timeto, String room) {
		super();
		this.routineId = routineId;
		this.timeFrom = timeFrom;
		this.timeto = timeto;
		this.room = room;
	}
	public RoutineBean(int routineId, String subject, String day, String timeFrom, String timeto, String room) {
		super();
		this.routineId = routineId;
		this.subject = subject;
		this.day = day;
		this.timeFrom = timeFrom;
		this.timeto = timeto;
		this.room = room;
	}
	public RoutineBean(String course, String branch, String class1, String section, String subject, String day,
			String timeFrom, String timeto, String room) {
		super();
		this.course = course;
		this.branch = branch;
		this.class1 = class1;
		this.section = section;
		this.subject = subject;
		this.day = day;
		this.timeFrom = timeFrom;
		this.timeto = timeto;
		this.room = room;
	}
	public RoutineBean() {
		// TODO Auto-generated constructor stub
	}
	public RoutineBean(int routineId,String course, String branch, String class1, String section, String subject, String day,
			String timeFrom, String timeto, String room) {
		super();
		this.routineId=routineId;
		this.course = course;
		this.branch = branch;
		this.class1 = class1;
		this.section = section;
		this.subject = subject;
		this.day = day;
		this.timeFrom = timeFrom;
		this.timeto = timeto;
		this.room = room;
	}
	public int getRoutineId() {
		return routineId;
	}
	public void setRoutineId(int routineId) {
		this.routineId = routineId;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getClass1() {
		return class1;
	}
	public void setClass1(String class1) {
		this.class1 = class1;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTimeFrom() {
		return timeFrom;
	}
	public void setTimeFrom(String timeFrom) {
		this.timeFrom = timeFrom;
	}
	public String getTimeto() {
		return timeto;
	}
	public void setTimeto(String timeto) {
		this.timeto = timeto;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	
	
}
