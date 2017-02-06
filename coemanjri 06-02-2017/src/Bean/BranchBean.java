package Bean;

public class BranchBean {

	private int branchid;
	private String branchName;
	
	
	public BranchBean(int branchid, String branchName) {
		super();
		this.branchid = branchid;
		this.branchName = branchName;
	}
	public BranchBean() {
		// TODO Auto-generated constructor stub
	}
	public int getBranchid() {
		return branchid;
	}
	public void setBranchid(int branchid) {
		this.branchid = branchid;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	
	
}
