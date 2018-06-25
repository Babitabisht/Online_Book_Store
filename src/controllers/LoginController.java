package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
// @WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		
		String username=  request.getParameter("user");
		try {
			System.out.println("Hello");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","web","Online_Book_shopping");
	PreparedStatement pst= conn.prepareStatement("Select * from loginAndSignUp where Username=? and password=?");
	pst.setString(1, username);
	pst.setString(2,request.getParameter("pass"));
	 ResultSet rs=pst.executeQuery();
	 System.out.println("Executed");
	 if(rs.next()) {
		System.out.println(rs.getString(1)+" "+rs.getString(2));
		
		HttpSession session =request.getSession();
		session.setAttribute("username", username);
		response.sendRedirect("Home.jsp");
	 }else {
		 response.sendRedirect("index.jsp");
	 }
	 

		
		}catch(Exception e) {
			
			System.out.println(e);
			response.sendRedirect("Error.jsp");
		}
		
	}

		
	}


