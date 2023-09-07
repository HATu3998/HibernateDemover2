package com.hibernate.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.hibernate.utils.HibernateUtil;
import com.hibernate.entity.*;

/**
 * Servlet implementation class complete
 */
@WebServlet("/complete")
public class complete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public complete() {
        super();
        // TODO Auto-generated constructor stub
    }
    private SessionFactory sessionFactory;
	 @Override
	    public void init() throws ServletException {
	        sessionFactory = HibernateUtil.getSessionFactory();
	    }
	    
	    public void destroy() {
	        sessionFactory.close();
	    }
		static final SessionFactory factory=HibernateUtil.getSessionFactory();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Session session = factory.openSession();
	        Transaction tx = session.beginTransaction();
	        try {
	        Order o = new Order();

	        Query<User> query = session.createQuery("FROM User", User.class);
	        List<User> u = query.list();
	      
	     
	       o.setUser(u.get(1));
	       o.setOrderDate(LocalDateTime.now());
	      

	        
	        
	        session.save(o);
	        tx.commit();
 	    System.out.println("Data inserted successfully!");

	      String s="đã mua hàng thành công";

	        request.setAttribute("o",s);
	        request.getRequestDispatcher("/comple.jsp").forward(request, response);
	    	} catch (Exception e) {
	    	    if (tx != null) {
	    	        tx.rollback();
	    	    }
	    	    e.printStackTrace();
	    	    System.out.print("lỗi");
	    	} finally {
	    	    session.close();
	    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
