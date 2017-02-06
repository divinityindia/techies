package Bean;

import java.sql.Date;

public class ExamBean {

	private int examId;
	private String examName;
	private Date dateofexam;
	private String note;
	
	
	public ExamBean(int examId, String examName, Date dateofexam, String note) {
		super();
		this.examId = examId;
		this.examName = examName;
		this.dateofexam = dateofexam;
		this.note = note;
	}
	public ExamBean() {
		// TODO Auto-generated constructor stub
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public Date getDateofexam() {
		return dateofexam;
	}
	public void setDateofexam(Date dateofexam) {
		this.dateofexam = dateofexam;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
