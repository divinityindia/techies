package Bean;

import java.io.InputStream;

public class ParentBean {

	private int parentid;
	private int studentid;
	private String guardianname;
	private String fathername;
	private String mothername;
	private String fatherProfession;
	private String motherProfession;
	private String email;
	private String phone;
	private String address;
	private String city;
	private String state;
	private InputStream photoInputStream;
	private String username;
	private String password;
	
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
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
	public int getParentid() {
		return parentid;
	}
	public void setParentid(int parentid) {
		this.parentid = parentid;
	}
	public String getGuardianname() {
		return guardianname;
	}
	public void setGuardianname(String guardianname) {
		this.guardianname = guardianname;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMothername(String mothername) {
		this.mothername = mothername;
	}
	public String getFatherProfession() {
		return fatherProfession;
	}
	public void setFatherProfession(String fatherProfession) {
		this.fatherProfession = fatherProfession;
	}
	public String getMotherProfession() {
		return motherProfession;
	}
	public void setMotherProfession(String motherProfession) {
		this.motherProfession = motherProfession;
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
	public InputStream getPhotoInputStream() {
		return photoInputStream;
	}
	public void setPhotoInputStream(InputStream photoInputStream) {
		this.photoInputStream = photoInputStream;
	}
	
	
}
