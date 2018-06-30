package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SqlConnection;

/**
 * Servlet implementation class cartController
 */
//@WebServlet("/cartController")
public class cartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		

		
		Connection conn =SqlConnection.getConnection();
		
		PreparedStatement pst = null;
		try {
			pst = conn.prepareStatement("insert into cart values(?,?,?,?)");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession sess=request.getSession();
		
		String username=(String) sess.getAttribute("username");
		String book_name=request.getParameter("book_name");
		String book_price=request.getParameter("book_price");
		System.out.println(username);	
	System.out.println(book_name);
	System.out.println(book_price);
	
		
		try {
			pst.setString(1,username);
			pst.setString(2, request.getParameter("book_image"));
			pst.setString(3,book_name);
			pst.setString(4, book_price);
			
		 int count=	pst.executeUpdate();
		 
		System.out.println(count);
			response.sendRedirect("cart.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("orderError.jsp");
			
		}
		
		
		
		
	
		
	
	
	}

}
