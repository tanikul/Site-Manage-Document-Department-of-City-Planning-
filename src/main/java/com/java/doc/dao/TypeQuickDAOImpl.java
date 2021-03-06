package com.java.doc.dao;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.java.doc.hibernate.HibernateUtil;
import com.java.doc.model.TypeQuick;

@Repository("typeQuickDao")
public class TypeQuickDAOImpl implements TypeQuickDAO {
	
	//protected Session session;
    //protected Transaction tx;
    
    public TypeQuickDAOImpl() {
        HibernateUtil.buildIfNeeded();
    }
	
	@SuppressWarnings("unchecked")
	@Override
	public List<TypeQuick> listTypeQuick() throws Exception {
		Session session = OpenSession();
		List<TypeQuick> type = null;
		try{
			type = session.createQuery("from TypeQuick where ACTIVE = 'Y'").list();
		}finally{
			HibernateUtil.close(session);
		}
		return type;
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<Integer, String> SelectQuick() throws Exception {
		Session session = OpenSession();
		List<TypeQuick> type = null;
		HashMap<Integer, String> list = null;
		try{
			type = session.createQuery("from TypeQuick where ACTIVE = 'Y'").list();
			Iterator<TypeQuick> itr = type.iterator();
			list = new HashMap<Integer, String>();
			while(itr.hasNext()){
				TypeQuick t = itr.next();
				list.put(t.getId(), t.getTypeQuick());
			}
		}finally{
			HibernateUtil.close(session);
		}
		return list;
	}
	
	@Override
	public String getTypeQuickById(Integer id) throws Exception {
		Session session = OpenSession();
		TypeQuick type = null;
		try{
			type = (TypeQuick) session.get(TypeQuick.class, id);
		}finally{
			HibernateUtil.close(session);
		}
		return type.getTypeQuick();
	}
	
	/*protected void startOperation() throws HibernateException {
        session = HibernateUtil.openSession();
        tx = session.beginTransaction();
    }*/
	
	private Session OpenSession() {
		Session session = HibernateUtil.openSession();
		return session;
	}
}
