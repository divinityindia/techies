package Bean;

import java.io.InputStream;
import java.sql.Date;

public class Student {
	private int studentid;
	private String studentName;
	private String prnno;
	private String guardianName;
	private Date dateofbirth;
	private InputStream photo;
	private String gender;
	private String bloodgroup;
	private String religion;
	private String category;
	private String caste;
	private String email;
	private String phone;
	private String address;
	private String paddress;
	private String city;
	private String pcity;
	private String state;
	private String pstate;
	private String pincode;
	private String ppincode;
	private String academicyear;
	private int courseId;
	private int branchId;
	private int classId;
	private String semester;
	private int sectionId;
	private int rollno;
	private Date dateofadmission;
	
	private String coursename;
	private String branchname;
	private String classname;
	private String sectionname;
	
	private String fatherName;
	private String motherName;
	private String foccupation;
	private String moccupation;
	private String gphone;
	private String gaddress;
	
	
	
	public Student(int studentid, String studentName, String prnno, String guardianName, Date dateofbirth,
			InputStream photo, String gender, String bloodgroup, String religion, String category, String caste,
			String email, String phone, String address, String paddress, String city, String pcity, String state,
			String pstate, String pincode, String ppincode, String academicyear, int courseId, int branchId,
			int classId, String semester, int sectionId, int rollno, Date dateofadmission, String fatherName,
			String motherName, String foccupation, String moccupation, String gphone, String gaddress) {
		super();
		this.studentid = studentid;
		this.studentName = studentName;
		this.prnno = prnno;
		this.guardianName = guardianName;
		this.dateofbirth = dateofbirth;
		this.photo = photo;
		this.gender = gender;
		this.bloodgroup = bloodgroup;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.paddress = paddress;
		this.city = city;
		this.pcity = pcity;
		this.state = state;
		this.pstate = pstate;
		this.pincode = pincode;
		this.ppincode = ppincode;
		this.academicyear = academicyear;
		this.courseId = courseId;
		this.branchId = branchId;
		this.classId = classId;
		this.semester = semester;
		this.sectionId = sectionId;
		this.rollno = rollno;
		this.dateofadmission = dateofadmission;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.foccupation = foccupation;
		this.moccupation = moccupation;
		this.gphone = gphone;
		this.gaddress = gaddress;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getFoccupation() {
		return foccupation;
	}

	public void setFoccupation(String foccupation) {
		this.foccupation = foccupation;
	}

	public String getMoccupation() {
		return moccupation;
	}

	public void setMoccupation(String moccupation) {
		this.moccupation = moccupation;
	}

	public String getGphone() {
		return gphone;
	}

	public void setGphone(String gphone) {
		this.gphone = gphone;
	}

	public String getGaddress() {
		return gaddress;
	}

	public void setGaddress(String gaddress) {
		this.gaddress = gaddress;
	}

	public Student(int studentid, String studentName, String prnno, String guardianName, Date dateofbirth,
			InputStream photo, String gender, String bloodgroup, String religion, String category, String caste,
			String email, String phone, String address, String paddress, String city, String pcity, String state,
			String pstate, String pincode, String ppincode, String academicyear, String semester, int sectionId,
			int rollno, Date dateofadmission, String coursename, String branchname, String classname,
			String sectionname,String fatherName,String motherName,String foccupation,String moccupation,String gphone,String gaddress) {
		super();
		this.studentid = studentid;
		this.studentName = studentName;
		this.prnno = prnno;
		this.guardianName = guardianName;
		this.dateofbirth = dateofbirth;
		this.photo = photo;
		this.gender = gender;
		this.bloodgroup = bloodgroup;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.paddress = paddress;
		this.city = city;
		this.pcity = pcity;
		this.state = state;
		this.pstate = pstate;
		this.pincode = pincode;
		this.ppincode = ppincode;
		this.academicyear = academicyear;
		this.semester = semester;
		this.sectionId = sectionId;
		this.rollno = rollno;
		this.dateofadmission = dateofadmission;
		this.coursename = coursename;
		this.branchname = branchname;
		this.classname = classname;
		this.sectionname = sectionname;
		this.fatherName=fatherName;
		this.motherName=motherName;
		this.foccupation=foccupation;
		this.moccupation=moccupation;
		this.gphone=gphone;
		this.gaddress=gaddress;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getBranchname() {
		return branchname;
	}

	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getSectionname() {
		return sectionname;
	}

	public void setSectionname(String sectionname) {
		this.sectionname = sectionname;
	}

	public Student() {
		
	}
	
	
	
	public Student(int studentid, String studentName, String prnno, String guardianName, Date dateofbirth,
			String gender, String bloodgroup, String religion, String category, String caste, String email,
			String phone, String address, String paddress, String city, String pcity, String state, String pstate,
			String pincode, String ppincode, String academicyear, String semester, int rollno, Date dateofadmission,
			String coursename, String branchname, String classname, String sectionname, String fatherName,
			String motherName, String foccupation, String moccupation, String gphone, String gaddress) {
		super();
		this.studentid = studentid;
		this.studentName = studentName;
		this.prnno = prnno;
		this.guardianName = guardianName;
		this.dateofbirth = dateofbirth;
		this.gender = gender;
		this.bloodgroup = bloodgroup;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.paddress = paddress;
		this.city = city;
		this.pcity = pcity;
		this.state = state;
		this.pstate = pstate;
		this.pincode = pincode;
		this.ppincode = ppincode;
		this.academicyear = academicyear;
		this.semester = semester;
		this.rollno = rollno;
		this.dateofadmission = dateofadmission;
		this.coursename = coursename;
		this.branchname = branchname;
		this.classname = classname;
		this.sectionname = sectionname;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.foccupation = foccupation;
		this.moccupation = moccupation;
		this.gphone = gphone;
		this.gaddress = gaddress;
	}

	public Student(String studentName, String prnno, String guardianName, Date dateofbirth, InputStream photo,
			String gender, String bloodgroup, String religion, String category, String caste, String email,
			String phone, String address, String paddress, String city, String pcity, String state, String pstate,
			String pincode, String ppincode, String academicyear, int courseId, int branchId, int classId,
			String semester, int sectionId, int rollno, Date dateofadmission,String fatherName,String motherName,String foccupation,String moccupation,String gphone,String gaddress) {
		super();
		this.studentName = studentName;
		this.prnno = prnno;
		this.guardianName = guardianName;
		this.dateofbirth = dateofbirth;
		this.photo = photo;
		this.gender = gender;
		this.bloodgroup = bloodgroup;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.paddress = paddress;
		this.city = city;
		this.pcity = pcity;
		this.state = state;
		this.pstate = pstate;
		this.pincode = pincode;
		this.ppincode = ppincode;
		this.academicyear = academicyear;
		this.courseId = courseId;
		this.branchId = branchId;
		this.classId = classId;
		this.semester = semester;
		this.sectionId = sectionId;
		this.rollno = rollno;
		this.dateofadmission = dateofadmission;
		this.fatherName=fatherName;
		this.motherName=motherName;
		this.foccupation=foccupation;
		this.moccupation=moccupation;
		this.gphone=gphone;
		this.gaddress=gaddress;
	}
	
	
	public Student(int studentid, String studentName, String prnno, String guardianName, Date dateofbirth,
			InputStream photo, String gender, String bloodgroup, String religion, String category, String caste,
			String email, String phone, String address, String paddress, String city, String pcity, String state,
			String pstate, String pincode, String ppincode, String academicyear, int courseId, int branchId,
			int classId, String semester, int sectionId, int rollno, Date dateofadmission) {
		super();
		this.studentid = studentid;
		this.studentName = studentName;
		this.prnno = prnno;
		this.guardianName = guardianName;
		this.dateofbirth = dateofbirth;
		this.photo = photo;
		this.gender = gender;
		this.bloodgroup = bloodgroup;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.paddress = paddress;
		this.city = city;
		this.pcity = pcity;
		this.state = state;
		this.pstate = pstate;
		this.pincode = pincode;
		this.ppincode = ppincode;
		this.academicyear = academicyear;
		this.courseId = courseId;
		this.branchId = branchId;
		this.classId = classId;
		this.semester = semester;
		this.sectionId = sectionId;
		this.rollno = rollno;
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
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public InputStream getPhoto() {
		return photo;
	}
	public void setPhoto(InputStream photo) {
		this.photo = photo;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPcity() {
		return pcity;
	}
	public void setPcity(String pcity) {
		this.pcity = pcity;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPstate() {
		return pstate;
	}
	public void setPstate(String pstate) {
		this.pstate = pstate;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getPpincode() {
		return ppincode;
	}
	public void setPpincode(String ppincode) {
		this.ppincode = ppincode;
	}
	public String getAcademicyear() {
		return academicyear;
	}
	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
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
	public Date getDateofadmission() {
		return dateofadmission;
	}
	public void setDateofadmission(Date dateofadmission) {
		this.dateofadmission = dateofadmission;
	}
}
