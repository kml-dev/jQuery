package kr.or.ddit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	// 객체변수 선언
	static Connection con = null;
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	static{
		// 1. Driver클래스 로드
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 
			con = DriverManager.getConnection(url, "LKM", "java");			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getCon(){
		return con;
	}
	
	
}
