package Bean;

import java.io.Serializable;

public class AccessBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1835363231352642791L;
	private int accessid;
	private int userid;
	private boolean addstudent;
	private boolean searchstudent;
	private boolean updatestudent;
	private boolean addemployee;
	private boolean searchemployee;
	private boolean updateemployee;
	private boolean news;
	private boolean event;
	private boolean routine;
	private boolean gallery;
	private boolean user;
	private boolean access;
	private boolean course;
	private boolean branch;
	private boolean class1;
	private boolean section;
	private boolean subject;
	private boolean leave;
	private boolean hostel;
	private boolean transport;
	private boolean holiday;
	private boolean studentattendance;
	private boolean teacherattendance;
	private boolean examattendance;
	private boolean exam;
	private boolean examschedule;
	private boolean mark;
	private boolean lmember;
	private boolean lbook;
	private boolean lissue;
	private boolean lfine;
	private boolean mailsms;
	private boolean message;
	private boolean report;
	private boolean visitor;
	private boolean feetype;
	private boolean invoice;
	private boolean balance;
	private boolean expense;
	private boolean paymentsetting;
	private boolean academiccalender;
	private boolean changepassword;
	
	
	
	public boolean isChangepassword() {
		return changepassword;
	}



	public void setChangepassword(boolean changepassword) {
		this.changepassword = changepassword;
	}



	public boolean isAcademiccalender() {
		return academiccalender;
	}



	public void setAcademiccalender(boolean academiccalender) {
		this.academiccalender = academiccalender;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	public AccessBean() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public AccessBean(int userid, boolean addstudent, boolean searchstudent, boolean updatestudent, boolean addemployee,
			boolean searchemployee, boolean updateemployee, boolean news, boolean event, boolean routine, boolean gallery,
			boolean user, boolean access, boolean course, boolean branch, boolean class1, boolean section,
			boolean subject, boolean leave, boolean hostel, boolean transport, boolean holiday,
			boolean studentattendance, boolean teacherattendance, boolean examattendance, boolean exam,
			boolean examschedule, boolean mark, boolean lmember, boolean lbook, boolean lissue, boolean lfine,
			boolean mailsms, boolean message, boolean report, boolean visitor, boolean feetype, boolean invoice,
			boolean balance, boolean expense, boolean paymentsetting,boolean academiccalender) {
		super();
		this.userid = userid;
		this.addstudent = addstudent;
		this.searchstudent = searchstudent;
		this.updatestudent = updatestudent;
		this.addemployee = addemployee;
		this.searchemployee = searchemployee;
		this.updateemployee = updateemployee;
		this.news=news;
		this.event = event;
		this.routine = routine;
		this.gallery = gallery;
		this.user = user;
		this.access = access;
		this.course = course;
		this.branch = branch;
		this.class1 = class1;
		this.section = section;
		this.subject = subject;
		this.leave = leave;
		this.hostel = hostel;
		this.transport = transport;
		this.holiday = holiday;
		this.studentattendance = studentattendance;
		this.teacherattendance = teacherattendance;
		this.examattendance = examattendance;
		this.exam = exam;
		this.examschedule = examschedule;
		this.mark = mark;
		this.lmember = lmember;
		this.lbook = lbook;
		this.lissue = lissue;
		this.lfine = lfine;
		this.mailsms = mailsms;
		this.message = message;
		this.report = report;
		this.visitor = visitor;
		this.feetype = feetype;
		this.invoice = invoice;
		this.balance = balance;
		this.expense = expense;
		this.paymentsetting = paymentsetting;
		this.academiccalender=academiccalender;
	}



	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getAccessid() {
		return accessid;
	}
	public void setAccessid(int accessid) {
		this.accessid = accessid;
	}
	public boolean isAddstudent() {
		return addstudent;
	}
	public void setAddstudent(boolean addstudent) {
		this.addstudent = addstudent;
	}
	public boolean isSearchstudent() {
		return searchstudent;
	}
	public void setSearchstudent(boolean searchstudent) {
		this.searchstudent = searchstudent;
	}
	public boolean isUpdatestudent() {
		return updatestudent;
	}
	public void setUpdatestudent(boolean updatestudent) {
		this.updatestudent = updatestudent;
	}
	public boolean isAddemployee() {
		return addemployee;
	}
	public void setAddemployee(boolean addemployee) {
		this.addemployee = addemployee;
	}
	public boolean isSearchemployee() {
		return searchemployee;
	}
	public void setSearchemployee(boolean searchemployee) {
		this.searchemployee = searchemployee;
	}
	public boolean isUpdateemployee() {
		return updateemployee;
	}
	public void setUpdateemployee(boolean updateemployee) {
		this.updateemployee = updateemployee;
	}
	
	public boolean isNews() {
		return news;
	}
	public void setNews(boolean news) {
		this.news = news;
	}
	public boolean isEvent() {
		return event;
	}
	public void setEvent(boolean event) {
		this.event = event;
	}
	public boolean isRoutine() {
		return routine;
	}
	public void setRoutine(boolean routine) {
		this.routine = routine;
	}
	public boolean isGallery() {
		return gallery;
	}
	public void setGallery(boolean gallery) {
		this.gallery = gallery;
	}
	public boolean isUser() {
		return user;
	}
	public void setUser(boolean user) {
		this.user = user;
	}
	public boolean isAccess() {
		return access;
	}
	public void setAccess(boolean access) {
		this.access = access;
	}
	public boolean isCourse() {
		return course;
	}
	public void setCourse(boolean course) {
		this.course = course;
	}
	public boolean isBranch() {
		return branch;
	}
	public void setBranch(boolean branch) {
		this.branch = branch;
	}
	public boolean isClass1() {
		return class1;
	}
	public void setClass1(boolean class1) {
		this.class1 = class1;
	}
	public boolean isSection() {
		return section;
	}
	public void setSection(boolean section) {
		this.section = section;
	}
	public boolean isSubject() {
		return subject;
	}
	public void setSubject(boolean subject) {
		this.subject = subject;
	}
	public boolean isLeave() {
		return leave;
	}
	public void setLeave(boolean leave) {
		this.leave = leave;
	}
	public boolean isHostel() {
		return hostel;
	}
	public void setHostel(boolean hostel) {
		this.hostel = hostel;
	}
	public boolean isTransport() {
		return transport;
	}
	public void setTransport(boolean transport) {
		this.transport = transport;
	}
	public boolean isHoliday() {
		return holiday;
	}
	public void setHoliday(boolean holiday) {
		this.holiday = holiday;
	}
	public boolean isStudentattendance() {
		return studentattendance;
	}
	public void setStudentattendance(boolean studentattendance) {
		this.studentattendance = studentattendance;
	}
	public boolean isTeacherattendance() {
		return teacherattendance;
	}
	public void setTeacherattendance(boolean teacherattendance) {
		this.teacherattendance = teacherattendance;
	}
	public boolean isExamattendance() {
		return examattendance;
	}
	public void setExamattendance(boolean examattendance) {
		this.examattendance = examattendance;
	}
	public boolean isExam() {
		return exam;
	}
	public void setExam(boolean exam) {
		this.exam = exam;
	}
	public boolean isExamschedule() {
		return examschedule;
	}
	public void setExamschedule(boolean examschedule) {
		this.examschedule = examschedule;
	}
	public boolean isMark() {
		return mark;
	}
	public void setMark(boolean mark) {
		this.mark = mark;
	}
	public boolean isLmember() {
		return lmember;
	}
	public void setLmember(boolean lmember) {
		this.lmember = lmember;
	}
	public boolean isLbook() {
		return lbook;
	}
	public void setLbook(boolean lbook) {
		this.lbook = lbook;
	}
	public boolean isLissue() {
		return lissue;
	}
	public void setLissue(boolean lissue) {
		this.lissue = lissue;
	}
	public boolean isLfine() {
		return lfine;
	}
	public void setLfine(boolean lfine) {
		this.lfine = lfine;
	}
	public boolean isMailsms() {
		return mailsms;
	}
	public void setMailsms(boolean mailsms) {
		this.mailsms = mailsms;
	}
	public boolean isMessage() {
		return message;
	}
	public void setMessage(boolean message) {
		this.message = message;
	}
	public boolean isReport() {
		return report;
	}
	public void setReport(boolean report) {
		this.report = report;
	}
	public boolean isVisitor() {
		return visitor;
	}
	public void setVisitor(boolean visitor) {
		this.visitor = visitor;
	}
	public boolean isFeetype() {
		return feetype;
	}
	public void setFeetype(boolean feetype) {
		this.feetype = feetype;
	}
	public boolean isInvoice() {
		return invoice;
	}
	public void setInvoice(boolean invoice) {
		this.invoice = invoice;
	}
	public boolean isBalance() {
		return balance;
	}
	public void setBalance(boolean balance) {
		this.balance = balance;
	}
	public boolean isExpense() {
		return expense;
	}
	public void setExpense(boolean expense) {
		this.expense = expense;
	}
	public boolean isPaymentsetting() {
		return paymentsetting;
	}
	public void setPaymentsetting(boolean paymentsetting) {
		this.paymentsetting = paymentsetting;
	}
}
