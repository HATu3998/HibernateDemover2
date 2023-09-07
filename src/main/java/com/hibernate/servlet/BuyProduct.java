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
 * Servlet implementation class BuyProduct
 */
@WebServlet("/BuyProduct")
public class BuyProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		Long num=Long.parseLong(id);
		Product pro=GetID.getEntityById(num);
		
		//tính giá sau chiết khấu
		 double originalPrice = pro.getPrice().doubleValue();
		    double discountPercentage = pro.getDiscountPercentage().doubleValue();
		    double discountAmount = (originalPrice * discountPercentage) / 100;
		    double discountedPrice = originalPrice - discountAmount;
		    request.setAttribute("proID", id);
		 request.setAttribute("pro", pro);
		 request.setAttribute("discountedPrice", discountedPrice);
		  request.setAttribute("discountAmount", discountAmount);
         request.getRequestDispatcher("/BuyProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
