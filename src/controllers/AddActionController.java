package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SqlConnection;

/**
 * Servlet implementation class AddActionController
 */
//@WebServlet("/AddActionController")
public class AddActionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddActionController() {
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
			pst = conn.prepareStatement("insert into Action values(?,?,?,?,?)");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pst.setString(1, request.getParameter("name"));
			pst.setString(2, request.getParameter("author"));
			pst.setString(3,request.getParameter("price"));
			pst.setString(4,request.getParameter("path"));
			pst.setString(5,request.getParameter("descp"));
			
		 int count=	pst.executeUpdate();
		 
		System.out.println(count);
			response.sendRedirect("admin.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("AdminError.jsp");
			
		}
		
		
		
		
	
	}

}
