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
 * Servlet implementation class RemoveController
 */
//@WebServlet("/RemoveController")
public class RemoveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveController() {
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
		
		String s =request.getParameter("Book");
System.out.println(request.getParameter("Book"));
  System.out.println(s.equals("Computing")); 
		System.out.println("--------------------------------------------------");
		Connection conn =SqlConnection.getConnection();
		PreparedStatement pst = null;
		
		
		//String  s =request.getParameter("Book");
	


if(s.equals("Biography")) {
	
	try {
		pst = conn.prepareStatement("delete from Biography where name = ?");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		pst.setString(1, request.getParameter("book_name"));
	
		
	 int count=	pst.executeUpdate();
	 
	 if(count !=0) {
		 
		 System.out.println(count);
			response.sendRedirect("admin.jsp");
			
	 }
	 
	 else {
	System.out.println(count);
		response.sendRedirect("CommonError.jsp");
	 }
	 request.getParameter("book_name");
	} catch (SQLException e) {
		
		System.out.println("In Catch block");
		
		// TODO Auto-generated catch block
		response.sendRedirect("CommonError.jsp");
		
		e.printStackTrace();
		
	}
	
} else if(s.equals("Action")){
	
	
	try {
		pst = conn.prepareStatement("delete from Action where name = ?");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		System.out.println( request.getParameter("book_name"));
		pst.setString(1, request.getParameter("book_name"));
	
		
	 int count=	pst.executeUpdate();
	 
	 if(count !=0) {
		 
		 System.out.println(count);
			response.sendRedirect("admin.jsp");
			
	 }
	 
	 else {
	System.out.println(count);
		response.sendRedirect("CommonError.jsp");
	 }
	 request.getParameter("book_name");
	} catch (SQLException e) {
		
		System.out.println("In Catch block");
		
		// TODO Auto-generated catch block
		response.sendRedirect("CommonError.jsp");
		
		e.printStackTrace();
		
	}
	
}else if(s.equals("Computing")) {
	
	

	
	
	try {
		pst = conn.prepareStatement("delete from Computing where name = ?");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		System.out.println( request.getParameter("book_name"));
		pst.setString(1, request.getParameter("book_name"));
	
		
	 int count=	pst.executeUpdate();
	 
	 if(count !=0) {
		 
		 System.out.println(count);
			response.sendRedirect("admin.jsp");
			
	 }
	 
	 else {
	System.out.println(count);
		response.sendRedirect("CommonError.jsp");
	 }
	 request.getParameter("book_name");
	} catch (SQLException e) {
		
		System.out.println("In Catch block");
		
		// TODO Auto-generated catch block
		response.sendRedirect("CommonError.jsp");
		
		e.printStackTrace();
		
	}
	

}    

else if(s.equals("Literature")) {
	

	
	
	try {
		pst = conn.prepareStatement("delete from Literature where name = ?");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		System.out.println( request.getParameter("book_name"));
		pst.setString(1, request.getParameter("book_name"));
	
		
	 int count=	pst.executeUpdate();
	 
	 if(count !=0) {
		 
		 System.out.println(count);
			response.sendRedirect("admin.jsp");
			
	 }
	 
	 else {
	System.out.println(count);
		response.sendRedirect("CommonError.jsp");
	 }
	 request.getParameter("book_name");
	} catch (SQLException e) {
		
		System.out.println("In Catch block");
		
		// TODO Auto-generated catch block
		response.sendRedirect("CommonError.jsp");
		
		e.printStackTrace();
		
	}
	

	
}else if(s.equals("Religion")){

	
	
	try {
		pst = conn.prepareStatement("delete from Religion where name = ?");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		System.out.println( request.getParameter("book_name"));
		pst.setString(1, request.getParameter("book_name"));
	
		
	 int count=	pst.executeUpdate();
	 
	 if(count !=0) {
		 
		 System.out.println(count);
			response.sendRedirect("admin.jsp");
			
	 }
	 
	 else {
	System.out.println(count);
		response.sendRedirect("CommonError.jsp");
	 }
	 request.getParameter("book_name");
	} catch (SQLException e) {
		
		System.out.println("In Catch block");
		
		// TODO Auto-generated catch block
		response.sendRedirect("CommonError.jsp");
		
		e.printStackTrace();
		
	}
	

}
else {
	System.out.println("Invalid Option");
	
	response.sendRedirect("CommonError.jsp");
	
}




		
		
		
		
	
	
	
	
	
	
	}

}
