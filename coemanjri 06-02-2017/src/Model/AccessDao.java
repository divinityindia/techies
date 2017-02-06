package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.NamingException;

import Bean.AccessBean;
import Bean.CourseBean;
import Com.DBConnection;

public class AccessDao {

	public static int updateAccessRights(AccessBean bean) {
		int result=0;
		Connection con=null;
		try {
			con = DBConnection.createconnection();
			PreparedStatement pst=con.prepareStatement("update accessrights set addstudent=?,searchstudent=?,updatestudent=?,addemployee=?,searchemployee=?,updateemployee=?,news=?,event=?,routine=?,gallery=?,user=?,access=?,course=?,branch=?,class=?,section=?,subject=?,leaves=?,hostel=?,transport=?,holiday=?,studentattendance=?,teacherattendance=?,examattendance=?,exam=?,examschedule=?,mark=?,lmember=?,lbook=?,lissue=?,lfine=?,mailsms=?,message=?,report=?,visitor=?,feetype=?,invoice=?,balance=?,expense=?,paymentsetting=?,academiccalender=? where userid=?");
			pst.setBoolean(1, bean.isAddstudent());
			pst.setBoolean(2, bean.isSearchstudent());
			pst.setBoolean(3, bean.isUpdatestudent());
			pst.setBoolean(4, bean.isAddemployee());
			pst.setBoolean(5, bean.isSearchemployee());
			pst.setBoolean(6, bean.isUpdateemployee());
			pst.setBoolean(7, bean.isNews());
			pst.setBoolean(8, bean.isEvent());
			pst.setBoolean(9, bean.isRoutine());
			pst.setBoolean(10, bean.isGallery());
			pst.setBoolean(11, bean.isUser());
			pst.setBoolean(12, bean.isAccess());
			pst.setBoolean(13, bean.isCourse());
			pst.setBoolean(14, bean.isBranch());
			pst.setBoolean(15, bean.isClass1());
			pst.setBoolean(16, bean.isSection());
			pst.setBoolean(17, bean.isSubject());
			pst.setBoolean(18, bean.isLeave());
			pst.setBoolean(19, bean.isHostel());
			pst.setBoolean(20, bean.isTransport());
			pst.setBoolean(21, bean.isHoliday());
			pst.setBoolean(22, bean.isStudentattendance());
			pst.setBoolean(23, bean.isTeacherattendance());
			pst.setBoolean(24, bean.isExamattendance());
			pst.setBoolean(25, bean.isExam());
			pst.setBoolean(26, bean.isExamschedule());
			pst.setBoolean(27, bean.isMark());
			pst.setBoolean(28, bean.isLmember());
			pst.setBoolean(29, bean.isLbook());
			pst.setBoolean(30, bean.isLissue());
			pst.setBoolean(31, bean.isLfine());
			pst.setBoolean(32, bean.isMailsms());
			pst.setBoolean(33, bean.isMessage());
			pst.setBoolean(34, bean.isReport());
			pst.setBoolean(35, bean.isVisitor());
			pst.setBoolean(36, bean.isFeetype());
			pst.setBoolean(37, bean.isInvoice());
			pst.setBoolean(38, bean.isBalance());
			pst.setBoolean(39, bean.isExpense());
			pst.setBoolean(40, bean.isPaymentsetting());
			pst.setBoolean(41, bean.isAcademiccalender());
			pst.setInt(42, bean.getUserid());
			result=pst.executeUpdate();
			pst.close();
			con.close();
			return result;
			
		} catch (SQLException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return result;
	}


	public static AccessBean getAccessRights(int userid) {
		AccessBean bean=new AccessBean();
		Connection con = null;
        PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            con = DBConnection.createconnection();
            pst=con.prepareStatement("SELECT * from accessrights where userid=?");
            pst.setInt(1, userid);
            rs=pst.executeQuery();
            if(rs.next())
            {
                
                bean.setAccessid(rs.getInt(1));
                bean.setUserid(rs.getInt(2));
                bean.setAddstudent(rs.getBoolean(3));
                bean.setSearchstudent(rs.getBoolean(4));
                bean.setUpdatestudent(rs.getBoolean(5));
                bean.setAddemployee(rs.getBoolean(6));
                bean.setSearchemployee(rs.getBoolean(7));
                bean.setUpdateemployee(rs.getBoolean(8));
                bean.setNews(rs.getBoolean(9));
                bean.setEvent(rs.getBoolean(10));
                bean.setRoutine(rs.getBoolean(11));
                bean.setGallery(rs.getBoolean(12));
                bean.setUser(rs.getBoolean(13));
                bean.setAccess(rs.getBoolean(14));
                bean.setCourse(rs.getBoolean(15));
                bean.setBranch(rs.getBoolean(16));
                bean.setClass1(rs.getBoolean(17));
                bean.setSection(rs.getBoolean(18));
                bean.setSubject(rs.getBoolean(19));
                bean.setLeave(rs.getBoolean(20));
                bean.setHostel(rs.getBoolean(21));
                bean.setTransport(rs.getBoolean(22));
                bean.setHoliday(rs.getBoolean(23));
                bean.setStudentattendance(rs.getBoolean(24));
                bean.setTeacherattendance(rs.getBoolean(25));
                bean.setExamattendance(rs.getBoolean(26));
                bean.setExam(rs.getBoolean(27));
                bean.setExamschedule(rs.getBoolean(28));
                bean.setMark(rs.getBoolean(29));
                bean.setLmember(rs.getBoolean(30));
                bean.setLbook(rs.getBoolean(31));
                bean.setLissue(rs.getBoolean(32));
                bean.setLfine(rs.getBoolean(33));
                bean.setMailsms(rs.getBoolean(34));
                bean.setMessage(rs.getBoolean(35));
                bean.setReport(rs.getBoolean(36));
                bean.setVisitor(rs.getBoolean(37));
                bean.setFeetype(rs.getBoolean(38));
                bean.setInvoice(rs.getBoolean(39));
                bean.setBalance(rs.getBoolean(40));
                bean.setExpense(rs.getBoolean(41));
                bean.setPaymentsetting(rs.getBoolean(42));
                bean.setAcademiccalender(rs.getBoolean(43));
                bean.setChangepassword(rs.getBoolean(44));
            }
            pst.close();
            rs.close();
            con.close();
            return bean;
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        finally {
        	try{
                con.close();
               }catch(Exception e1){
            	   e1.printStackTrace();
               }
		}
        return bean;
	}
	
	public static AccessBean[] getAccessRights(int userid,int cuserId) {
		AccessBean bean=new AccessBean();
		AccessBean cbean=new AccessBean();
		AccessBean [] ab=new AccessBean[2];
		Connection con = null;
        PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            con = DBConnection.createconnection();
            pst=con.prepareStatement("SELECT * from accessrights where userid=?");
            pst.setInt(1, cuserId);
            rs=pst.executeQuery();
            if(rs.next())
            {
                
                cbean.setAccessid(rs.getInt(1));
                cbean.setUserid(rs.getInt(2));
                cbean.setAddstudent(rs.getBoolean(3));
                cbean.setSearchstudent(rs.getBoolean(4));
                cbean.setUpdatestudent(rs.getBoolean(5));
                cbean.setAddemployee(rs.getBoolean(6));
                cbean.setSearchemployee(rs.getBoolean(7));
                cbean.setUpdateemployee(rs.getBoolean(8));
                cbean.setNews(rs.getBoolean(9));
                cbean.setEvent(rs.getBoolean(10));
                cbean.setRoutine(rs.getBoolean(11));
                cbean.setGallery(rs.getBoolean(12));
                cbean.setUser(rs.getBoolean(13));
                cbean.setAccess(rs.getBoolean(14));
                cbean.setCourse(rs.getBoolean(15));
                cbean.setBranch(rs.getBoolean(16));
                cbean.setClass1(rs.getBoolean(17));
                cbean.setSection(rs.getBoolean(18));
                cbean.setSubject(rs.getBoolean(19));
                cbean.setLeave(rs.getBoolean(20));
                cbean.setHostel(rs.getBoolean(21));
                cbean.setTransport(rs.getBoolean(22));
                cbean.setHoliday(rs.getBoolean(23));
                cbean.setStudentattendance(rs.getBoolean(24));
                cbean.setTeacherattendance(rs.getBoolean(25));
                cbean.setExamattendance(rs.getBoolean(26));
                cbean.setExam(rs.getBoolean(27));
                cbean.setExamschedule(rs.getBoolean(28));
                cbean.setMark(rs.getBoolean(29));
                cbean.setLmember(rs.getBoolean(30));
                cbean.setLbook(rs.getBoolean(31));
                cbean.setLissue(rs.getBoolean(32));
                cbean.setLfine(rs.getBoolean(33));
                cbean.setMailsms(rs.getBoolean(34));
                cbean.setMessage(rs.getBoolean(35));
                cbean.setReport(rs.getBoolean(36));
                cbean.setVisitor(rs.getBoolean(37));
                cbean.setFeetype(rs.getBoolean(38));
                cbean.setInvoice(rs.getBoolean(39));
                cbean.setBalance(rs.getBoolean(40));
                cbean.setExpense(rs.getBoolean(41));
                cbean.setPaymentsetting(rs.getBoolean(42));
                cbean.setAcademiccalender(rs.getBoolean(43));
                ab[0]=cbean;
            }
            
            pst=con.prepareStatement("SELECT * from accessrights where userid=?");
            pst.setInt(1, userid);
            rs=pst.executeQuery();
            if(rs.next())
            {
                
            	bean.setAccessid(rs.getInt(1));
                bean.setUserid(rs.getInt(2));
                bean.setAddstudent(rs.getBoolean(3));
                bean.setSearchstudent(rs.getBoolean(4));
                bean.setUpdatestudent(rs.getBoolean(5));
                bean.setAddemployee(rs.getBoolean(6));
                bean.setSearchemployee(rs.getBoolean(7));
                bean.setUpdateemployee(rs.getBoolean(8));
                bean.setNews(rs.getBoolean(9));
                bean.setEvent(rs.getBoolean(10));
                bean.setRoutine(rs.getBoolean(11));
                bean.setGallery(rs.getBoolean(12));
                bean.setUser(rs.getBoolean(13));
                bean.setAccess(rs.getBoolean(14));
                bean.setCourse(rs.getBoolean(15));
                bean.setBranch(rs.getBoolean(16));
                bean.setClass1(rs.getBoolean(17));
                bean.setSection(rs.getBoolean(18));
                bean.setSubject(rs.getBoolean(19));
                bean.setLeave(rs.getBoolean(20));
                bean.setHostel(rs.getBoolean(21));
                bean.setTransport(rs.getBoolean(22));
                bean.setHoliday(rs.getBoolean(23));
                bean.setStudentattendance(rs.getBoolean(24));
                bean.setTeacherattendance(rs.getBoolean(25));
                bean.setExamattendance(rs.getBoolean(26));
                bean.setExam(rs.getBoolean(27));
                bean.setExamschedule(rs.getBoolean(28));
                bean.setMark(rs.getBoolean(29));
                bean.setLmember(rs.getBoolean(30));
                bean.setLbook(rs.getBoolean(31));
                bean.setLissue(rs.getBoolean(32));
                bean.setLfine(rs.getBoolean(33));
                bean.setMailsms(rs.getBoolean(34));
                bean.setMessage(rs.getBoolean(35));
                bean.setReport(rs.getBoolean(36));
                bean.setVisitor(rs.getBoolean(37));
                bean.setFeetype(rs.getBoolean(38));
                bean.setInvoice(rs.getBoolean(39));
                bean.setBalance(rs.getBoolean(40));
                bean.setExpense(rs.getBoolean(41));
                bean.setPaymentsetting(rs.getBoolean(42));
                bean.setAcademiccalender(rs.getBoolean(43));
                ab[1]=bean;
            }
            pst.close();
            rs.close();
            con.close();
            return ab;
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        finally {
        	try{
                con.close();
               }catch(Exception e1){
            	   e1.printStackTrace();
               }
		}
        return ab;
	}
}

