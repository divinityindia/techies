package Bean;

public class SectionBean {

	private int sectionId;
	private String sectionName;
	private String category;
	private int classid;
	private int teacherId;
	private String note;
	
	public SectionBean(int sectionId, String sectionName, String category, int classid, int teacherId, String note) {
		super();
		this.sectionId = sectionId;
		this.sectionName = sectionName;
		this.category = category;
		this.classid = classid;
		this.teacherId = teacherId;
		this.note = note;
	}
	public SectionBean(int sectionId, String sectionName, String note) {
		super();
		this.sectionId = sectionId;
		this.sectionName = sectionName;
		this.category = category;
		this.classid = classid;
		this.teacherId = teacherId;
		this.note = note;
	}
	public SectionBean() {
		// TODO Auto-generated constructor stub
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
