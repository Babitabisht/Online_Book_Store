package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqlConnection {
static Connection conn;

public static Connection getConnection() {
	try {Class.forName("oracle.jdbc.driver.OracleDriver");
	conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","web","Online_Book_shopping");
	return conn;
	}catch(Exception e) {
		System.out.println(e);
		return null;
		
	}
	
	
}
/*public static void main(String[] args) {
	
	
	System.out.println(SqlConnection .getConnection());
}*/

	
}
