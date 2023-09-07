package com.hibernate.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.GetID;
import com.hibernate.entity.Product;

/**
 * Servlet implementation class PayProduct
 */
@WebServlet("/PayProduct")
public class PayProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String giam=request.getParameter("giam");
		String gia=request.getParameter("gia");
		String giagoc=request.getParameter("giagoc");
		 request.setAttribute("giagoc",giagoc);
		 request.setAttribute("name", name);
		 request.setAttribute("giam", giam);
		  request.setAttribute("gia", gia);
         request.getRequestDispatcher("/confirmation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
