package Bean;

import java.io.InputStream;
import java.sql.Date;

public class StudentBean {

	private int studentid;
	private String studentName;
	private String prnno;
	private String guardianName;
	private String gender;
	private Date dateofbirth;
	private String bloodgroup;
	private String religion;
	private String category;
	private String caste;
	private String email;
	private String phone;
	private String address;
	private String city;
	private String pincode;
	private String state;
	private int classId;
	private int sectionId;
	private int rollno;
	private InputStream photoInputStream;
	private Date dateofadmission;
	private String academicyear;
	private int branchId;
	private int courseId;
	private String semester;
	private String username;
	private String password;
	
	
	
	public StudentBean(int studentid, String studentName, String prnno, String guardianName, String gender,
			Date dateofbirth, String bloodgroup, String religion,String category, String caste, String email, String phone,
			String address, String city, String state, String pincode, int classId, int sectionId, int rollno,
			InputStream photoInputStream, Date dateofadmission, String academicyear, int branchId, int courseId,
			String semester) {
		super();
		this.studentid = studentid;
		this.studentName = studentName;
		this.prnno = prnno;
		this.guardianName = guardianName;
		this.gender = gender;
		this.dateofbirth = dateofbirth;
		this.bloodgroup = bloodgroup;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.classId = classId;
		this.sectionId = sectionId;
		this.rollno = rollno;
		this.photoInputStream = photoInputStream;
		this.dateofadmission = dateofadmission;
		this.academicyear = academicyear;
		this.branchId = branchId;
		this.courseId = courseId;
		this.semester = semester;
	}
	public StudentBean() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public InputStream getPhotoInputStream() {
		return photoInputStream;
	}
	public void setPhotoInputStream(InputStream photoInputStream) {
		this.photoInputStream = photoInputStream;
	}
	public Date getDateofadmission() {
		return dateofadmission;
	}
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public void setDateofadmission(Date dateofadmission) {
		this.dateofadmission = dateofadmission;
	}
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getPrnno() {
		return prnno;
	}
	public void setPrnno(String prnno) {
		this.prnno = prnno;
	}
	public String getGuardianName() {
		return guardianName;
	}
	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	
	
	public String getAcademicyear() {
		return academicyear;
	}
	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
