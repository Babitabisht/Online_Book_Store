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
		System.out.println(username);
		String pass = request.getParameter("pass");
		System.out.println(pass);
		String admin="admin";
		
	
			
			try {
				System.out.println("Hello");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","web","Online_Book_shopping");
		PreparedStatement pst= conn.prepareStatement("Select * from loginAndSignUp where Username=? and password=?");
		pst.setString(1, username);
		pst.setString(2, pass);
		 ResultSet rs=pst.executeQuery();
		 System.out.println("Executed");

		/* System.out.println(rs.next());
		 System.out.println(rs.getString(1));  
		 System.out.println((rs.getString(1)==admin));  
		// System.out.println(=="admin");
		 */
		 
		 
		 
		if(rs.next()) { 
			System.out.println("in the if section");
			if(admin.equals(rs.getString(1)) && (admin.equals(rs.getString(7)))) {
				System.out.println("in the nested if  section");
				response.sendRedirect("admin.jsp");
				
			}else {
				
				System.out.println("in the else section");
				response.sendRedirect("Home.jsp");
			}
			
			
		}else {
			System.out.println("in the else section");
			response.sendRedirect("index.jsp");
		}

			
			}catch(Exception e) {
				
				System.out.println(e);
				response.sendRedirect("Error.jsp");
			}
		
		

		
	}

		
	}


