package Bean;

public class CourseBean {

	private int courseId;
	private String courseName;
	private String courseDuration;
	
	
	public CourseBean(int courseId, String courseName, String courseDuration) {
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseDuration = courseDuration;
	}
	
	public CourseBean() {
		// TODO Auto-generated constructor stub
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseDuration() {
		return courseDuration;
	}
	public void setCourseDuration(String courseDuration) {
		this.courseDuration = courseDuration;
	}
	
}
