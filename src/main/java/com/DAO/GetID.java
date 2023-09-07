package com.DAO;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.hibernate.entity.Product;
import com.hibernate.utils.HibernateUtil;


public class GetID {
	 public static Product getEntityById(long id) {
	        Session session = HibernateUtil.getSessionFactory().openSession();
	        try {
	            session.beginTransaction();
	            Query<Product> query = session.createQuery("FROM Product WHERE id = :id", Product.class);
	            query.setParameter("id", id);
	      
	            return query.uniqueResult();
	        } finally {
	            session.getTransaction().commit();
	            session.close();
	        }
	    }
}
