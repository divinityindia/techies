package Bean;

public class DepartmentBean {

	private int deptid;
	private String deptName;
	
	public DepartmentBean() {
		// TODO Auto-generated constructor stub
	}

	public DepartmentBean(int deptid, String deptName) {
		super();
		this.deptid = deptid;
		this.deptName = deptName;
	}

	public int getDeptid() {
		return deptid;
	}

	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
	
	
	
}
