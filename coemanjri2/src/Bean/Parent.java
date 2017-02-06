package Bean;

import java.io.InputStream;

public class Parent {

	private int parentId;
	private int studentId;
	private String guardianName;
	private String fatherName;
	private String motherName;
	private String foccupation;
	private String moccupation;
	private String phone;
	private String address;
	private InputStream photo;
	
	public Parent() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Parent(int studentId, String guardianName, String fatherName, String motherName, String foccupation,
			String moccupation, String phone, String address) {
		super();
		this.studentId = studentId;
		this.guardianName = guardianName;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.foccupation = foccupation;
		this.moccupation = moccupation;
		this.phone = phone;
		this.address = address;
	}



	public Parent(int studentId, String gurdianName, String fatherName, String motherName, String foccupation, String moccupation,
			String phone, String address, InputStream photo) {
		super();
		this.studentId = studentId;
		this.guardianName=gurdianName;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.foccupation = foccupation;
		this.moccupation = moccupation;
		this.phone = phone;
		this.address = address;
		this.photo = photo;
	}



	public Parent(int parentId, int studentId, String gurdianName, String fatherName, String motherName, String foccupation,
			String moccupation, String phone, String address, InputStream photo) {
		super();
		this.parentId = parentId;
		this.studentId = studentId;
		this.guardianName=gurdianName;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.foccupation = foccupation;
		this.moccupation = moccupation;
		this.phone = phone;
		this.address = address;
		this.photo = photo;
	}



	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
		public int getStudentId() {
		return studentId;
	}



	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}



	public String getGuardianName() {
		return guardianName;
	}



	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
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
	public InputStream getPhoto() {
		return photo;
	}
	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}
}
