package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Mail.Mailer;
import dao.SqlConnection;

/**
 * Servlet implementation class SignUpController
 */
//@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
    	super();
    	System.out.println("hello controller................");
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		((PrintWriter) response).write("hello");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" hello dopost....");
		Connection conn= SqlConnection.getConnection();
		PreparedStatement pst = null;
		/*java.util.Date uDate = new java.util.Date(request.getParameter("dob"));
		java.sql.Date date=new java.sql.Date(uDate.getDate());
		System.out.println(uDate);*/
		
			try {
				pst = conn.prepareStatement("insert into loginAndSignUp values(?,?,?,?,?,?,?,?)");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
			// TODO Auto-generated catch block
		
		
		try {String email=request.getParameter("email");
			
		//	java.util.Date uDate = new java.util.Date(request.getParameter("dob"));
			
					Long mob=Long.parseLong(request.getParameter("contact")) ;
			pst.setString(1, request.getParameter("username"));
			
			
			pst.setString(2, request.getParameter("firstname"));
			pst.setString(3, request.getParameter("lastname"));
			
			pst.setString(4,email);
			    
			pst.setString(5, request.getParameter("dob"));
			pst.setLong(6, mob);
			
			
			
			pst.setString(7, request.getParameter("pass"));

			pst.setString(8, request.getParameter("radiogroup"));
			
			 int count=pst.executeUpdate();
			 System.out.println("update.................");
			 System.out.println(count);
			 	if(count<=0) {

			 		
			 		String s="Welcome to Online Book store ,  a  single  place to find all ur favourite books";
					//Mail.Mailer.send("","",email,"Online Book Store",s);
					
			 	response.sendRedirect("index.jsp");
			//System.out.println("Successfull");
			 	}
			
			
			
			
			
			
			
			conn.close();
			pst.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("Error.jsp");
		}
		
	
		
		
	}

}
