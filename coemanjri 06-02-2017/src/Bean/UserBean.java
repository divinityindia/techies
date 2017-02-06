/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author admin
 */
public class UserBean {
    private int userid;
    private int deptid;
    private String deptName;
    private String category;
    private String username;
    private String password;
    private AccessBean accessrights;
    
    
    public AccessBean getAccessrights() {
		return accessrights;
	}

	public void setAccessrights(AccessBean accessrights) {
		this.accessrights = accessrights;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public UserBean(int deptid, String deptName, String category, String username, String password) {
		super();
		this.deptid = deptid;
		this.deptName = deptName;
		this.category=category;
		this.username = username;
		this.password = password;
	}

	public UserBean(int userid, int deptid, String deptName, String category, String username, String password) {
		super();
		this.userid = userid;
		this.deptid = deptid;
		this.deptName = deptName;
		this.category=category;
		this.username = username;
		this.password = password;
	}

	public UserBean() {
		// TODO Auto-generated constructor stub
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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
