package com.infinite.HibLms;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class LeaveDAO {
 
	SessionFactory sessionFactory;
	
	public List<Leave> showLeave(int empId) {
		sessionFactory = SessionHelper.getSession();
  	    Session session=sessionFactory.openSession();  
		Query query = session.getNamedQuery("leave");
		query.setParameter("empId",empId);
		
		List<Leave> leaveList = query.list();
		return leaveList;
	}
	public Leave searchLeave(int leaveId) {
		sessionFactory = SessionHelper.getSession();
  	    Session session=sessionFactory.openSession();  
		Query query = session.getNamedQuery("searchLeave");
		query.setParameter("leaveId",leaveId);   
		List<Leave> leaveList = query.list();
		if (leaveList.size()==0) {
			return null;
		} 
		return leaveList.get(0);
	}
	
	
}