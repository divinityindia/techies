package Bean;

import java.sql.Date;

public class EmployeeExp {
	 private int facultyId;
	 
	 private int expId;
	 private String eorg;
	 private String eurl;
	 private String designation;
	 private String jobprofile;
	 private Date fromDate;
	 private Date toDate;
	 private String achievement;
	 
	 public EmployeeExp() {
		// TODO Auto-generated constructor stub
	}

	public int getFacultyId() {
		return facultyId;
	}

	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
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

	public String getAchievement() {
		return achievement;
	}

	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}
	 
	public EmployeeExp(int facultyId, String eorg, String eurl, String designation, String jobprofile, Date fromDate,
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

	public EmployeeExp(String eorg, String eurl, String designation, String jobprofile, Date fromDate,
			Date toDate, String achievement,int expId) {
		super();
		
		this.eorg = eorg;
		this.eurl = eurl;
		this.designation = designation;
		this.jobprofile = jobprofile;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.achievement = achievement;
		this.expId=expId;
	}
	
	
}
