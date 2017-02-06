package Bean;

public class ClassBean {

	private int classId;
	private String className;
	private String classNumeric;
	private String teacherName;
	private String note;
	
	public ClassBean() {
		// TODO Auto-generated constructor stub
	}
	
	
	public ClassBean(int classId, String className, String classNumeric, String note) {
		super();
		this.classId = classId;
		this.className = className;
		this.classNumeric = classNumeric;
		this.note = note;
	}


	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassNumeric() {
		return classNumeric;
	}
	public void setClassNumeric(String classNumeric) {
		this.classNumeric = classNumeric;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	
}
