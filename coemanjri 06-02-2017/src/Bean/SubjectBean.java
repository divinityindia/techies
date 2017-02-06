package Bean;

public class SubjectBean {

	private int subjectid;
	private String subjectName;
	private int courseId;
	private String semester;
	private int branchId;
	
	
	public SubjectBean(int subjectid, String subjectName, int courseId, String semester, int branchId) {
		super();
		this.subjectid = subjectid;
		this.subjectName = subjectName;
		this.courseId = courseId;
		this.semester = semester;
		this.branchId = branchId;
	}
	public SubjectBean() {
		// TODO Auto-generated constructor stub
	}
	public int getSubjectid() {
		return subjectid;
	}
	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	
}
