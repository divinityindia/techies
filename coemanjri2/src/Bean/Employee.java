package Bean;

import java.io.InputStream;
import java.sql.Date;

public class Employee {
	 private int facultyId;
	 private String sal;
	 private String fname;
	 private String mname;
	 private String lname;
	 private InputStream photo;
	 private String panno;
	 private String aadharno;
	 private String paddress;
	 private String caddress;
	 private String pstate;
	 private String state;
	 private String pcity;
	 private String city;
	 private String ppin;
	 private String cpin;
	 private Date dob;
	 private String gender;
	 private String religion;
	 
	 private String category;
	 private String caste;
	 private String mstatus;
	 private String mobile;
	 private String email;
	 private String website;
	 private int branchId;
	 private String branchName;
	 private String post;
	 private Date doj;
	 private String noa;
	 private String noj;
	 
	 
	 //Experience Fields
	 private int expId;
	 private String eorg;
	 private String eurl;
	 private String designation;
	 private String jobprofile;
	 private Date fromDate;
	 private Date toDate;
	 private String achievement;
	 
	 //Knowledge Repository Fields
	 
	 private int krId;
	 private String headline;
	 private String krCategory;
	 private String publication;
	 private String author;
	 private Date date;
	 private String url;
	 private InputStream article;
	 private String keywords;
	 private String content;
	 private String notes;
	 private String priority;
	 private String guide;
	 private String coguide;
	 private String teamsize;
	 
	 
	 
	 
	 
	 public Employee(int facultyId, String headline, String krCategory, String publication, String author, Date date,
			String url, InputStream article, String keywords, String content, String notes, String priority,
			String guide, String coguide, String teamsize) {
		super();
		this.facultyId = facultyId;
		this.headline = headline;
		this.krCategory = krCategory;
		this.publication = publication;
		this.author = author;
		this.date = date;
		this.url = url;
		this.article = article;
		this.keywords = keywords;
		this.content = content;
		this.notes = notes;
		this.priority = priority;
		this.guide = guide;
		this.coguide = coguide;
		this.teamsize = teamsize;
	}

	 
	public Employee(int facultyId, String sal,String fname, String mname, String lname, String panno, String aadharno,
			String paddress, String caddress, String pstate, String state, String pcity, String city, String ppin,
			String cpin, Date dob, String gender, String religion, String category, String caste, String mstatus,
			String mobile, String email, String website, String branchName, String post, Date doj,
			String noa, String noj, String eorg, String eurl, String designation, String jobprofile, Date fromDate,
			Date toDate, String achievement) {
		super();
		this.facultyId = facultyId;
		this.sal=sal;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.panno = panno;
		this.aadharno = aadharno;
		this.paddress = paddress;
		this.caddress = caddress;
		this.pstate = pstate;
		this.state = state;
		this.pcity = pcity;
		this.city = city;
		this.ppin = ppin;
		this.cpin = cpin;
		this.dob = dob;
		this.gender = gender;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.mstatus = mstatus;
		this.mobile = mobile;
		this.email = email;
		this.website = website;
		this.branchName = branchName;
		this.post = post;
		this.doj = doj;
		this.noa = noa;
		this.noj = noj;
		this.eorg = eorg;
		this.eurl = eurl;
		this.designation = designation;
		this.jobprofile = jobprofile;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.achievement = achievement;
	}


	public int getKrId() {
		return krId;
	}

	public void setKrId(int krId) {
		this.krId = krId;
	}

	public String getHeadline() {
		return headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	public String getKrCategory() {
		return krCategory;
	}
	

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public void setKrCategory(String krCategory) {
		this.krCategory = krCategory;
	}

	public String getPublication() {
		return publication;
	}

	public void setPublication(String publication) {
		this.publication = publication;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public InputStream getArticle() {
		return article;
	}

	public void setArticle(InputStream article) {
		this.article = article;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getGuide() {
		return guide;
	}

	public void setGuide(String guide) {
		this.guide = guide;
	}

	public String getCoguide() {
		return coguide;
	}

	public void setCoguide(String coguide) {
		this.coguide = coguide;
	}

	public String getTeamsize() {
		return teamsize;
	}

	public void setTeamsize(String teamsize) {
		this.teamsize = teamsize;
	}

	public String getAchievement() {
		return achievement;
	}

	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}

	public Employee(int facultyId, String eorg, String eurl, String designation, String jobprofile, Date fromDate,
			Date toDate, String achievement) {
		super();
		this.facultyId = facultyId;
		this.eorg = eorg;
		this.eurl = eurl;
		this.designation = designation;
		this.jobprofile = jobprofile;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.achievement=achievement;
	}

	public int getExpId() {
		return expId;
	}

	public void setExpId(int expId) {
		this.expId = expId;
	}

	public String getEorg() {
		return eorg;
	}

	public void setEorg(String eorg) {
		this.eorg = eorg;
	}

	public String getEurl() {
		return eurl;
	}

	public void setEurl(String eurl) {
		this.eurl = eurl;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getJobprofile() {
		return jobprofile;
	}

	public void setJobprofile(String jobprofile) {
		this.jobprofile = jobprofile;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public Employee() {
		// TODO Auto-generated constructor stub
	}

	
	public Employee(int facultyId, String fname, String mname, String lname, String panno, String aadharno,
			String paddress, String caddress, String pstate, String state, String pcity, String city, String ppin,
			String cpin, Date dob, String gender, String religion, String category, String caste, String mstatus,
			String mobile, String email, String website, String branchName, String post, Date doj, String noa,
			String noj, int expId, String eorg, String eurl, String designation, String jobprofile, Date fromDate,
			Date toDate, String achievement, InputStream article, String keywords, String content, String notes,
			String priority, String guide, String coguide, String teamsize) {
		super();
		this.facultyId = facultyId;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.panno = panno;
		this.aadharno = aadharno;
		this.paddress = paddress;
		this.caddress = caddress;
		this.pstate = pstate;
		this.state = state;
		this.pcity = pcity;
		this.city = city;
		this.ppin = ppin;
		this.cpin = cpin;
		this.dob = dob;
		this.gender = gender;
		this.religion = religion;
		this.category = category;
		this.caste = caste;
		this.mstatus = mstatus;
		this.mobile = mobile;
		this.email = email;
		this.website = website;
		this.branchName = branchName;
		this.post = post;
		this.doj = doj;
		this.noa = noa;
		this.noj = noj;
		this.expId = expId;
		this.eorg = eorg;
		this.eurl = eurl;
		this.designation = designation;
		this.jobprofile = jobprofile;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.achievement = achievement;
		this.article = article;
		this.keywords = keywords;
		this.content = content;
		this.notes = notes;
		this.priority = priority;
		this.guide = guide;
		this.coguide = coguide;
		this.teamsize = teamsize;
	}

	public Employee(String sal, String fname, String mname, String lname, InputStream photo, String panno,
			String aadharno, String paddress, String caddress, String pstate, String state, String pcity, String city,
			String ppin, String cpin, Date dob, String gender, String religion, String category, String caste, String mstatus,
			String mobile, String email, String website, int branchId, String post, Date doj, String noa, String noj) {
		super();
		this.sal = sal;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.photo = photo;
		this.panno = panno;
		this.aadharno = aadharno;
		this.paddress = paddress;
		this.caddress = caddress;
		this.pstate = pstate;
		this.state = state;
		this.pcity = pcity;
		this.city = city;
		this.ppin = ppin;
		this.cpin = cpin;
		this.dob = dob;
		this.gender = gender;
		this.religion = religion;
		this.category=category;
		this.caste = caste;
		this.mstatus = mstatus;
		this.mobile = mobile;
		this.email = email;
		this.website = website;
		this.branchId = branchId;
		this.post = post;
		this.doj = doj;
		this.noa = noa;
		this.noj = noj;
	}

	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getFacultyId() {
		return facultyId;
	}

	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}

	public String getSal() {
		return sal;
	}

	public void setSal(String sal) {
		this.sal = sal;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public InputStream getPhoto() {
		return photo;
	}

	public void setPhoto(InputStream photo) {
		this.photo = photo;
	}

	public String getPanno() {
		return panno;
	}

	public void setPanno(String panno) {
		this.panno = panno;
	}

	public String getAadharno() {
		return aadharno;
	}

	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}

	public String getPaddress() {
		return paddress;
	}

	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getPstate() {
		return pstate;
	}

	public void setPstate(String pstate) {
		this.pstate = pstate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPcity() {
		return pcity;
	}

	public void setPcity(String pcity) {
		this.pcity = pcity;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPpin() {
		return ppin;
	}

	public void setPpin(String ppin) {
		this.ppin = ppin;
	}

	public String getCpin() {
		return cpin;
	}

	public void setCpin(String cpin) {
		this.cpin = cpin;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getMstatus() {
		return mstatus;
	}

	public void setMstatus(String mstatus) {
		this.mstatus = mstatus;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	public String getNoa() {
		return noa;
	}

	public void setNoa(String noa) {
		this.noa = noa;
	}

	public String getNoj() {
		return noj;
	}

	public void setNoj(String noj) {
		this.noj = noj;
	}

	
	 
	 
}
