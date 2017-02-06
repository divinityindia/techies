package Bean;

import java.io.InputStream;

public class AcademicCalenderBean {
	private int acid;
	private String branch;
	private String class1;
	private InputStream is;
	private String documentName;
	private String documentType;
	
	public AcademicCalenderBean() {
		// TODO Auto-generated constructor stub
	}

	public int getAcid() {
		return acid;
	}

	public void setAcid(int acid) {
		this.acid = acid;
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

	public InputStream getIs() {
		return is;
	}

	public void setIs(InputStream is) {
		this.is = is;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}

	public AcademicCalenderBean(int acid, String branch, String class1, InputStream is, String documentName,
			String documentType) {
		super();
		this.acid = acid;
		this.branch = branch;
		this.class1 = class1;
		this.is = is;
		this.documentName = documentName;
		this.documentType = documentType;
	}
	
	
	
}
