<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 1~5
	// 1
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection con = DriverManager.getConnection(url, "LKM", "java");
	
	// 3. sql문장을 실행하기 위한 객체 - Statement, Prepared	
	Statement stmt = con.createStatement();
	
	// 4.
	String sql = "select * from lprod";
	
	// 5. ResultSet으로 리턴
	ResultSet rs = stmt.executeQuery(sql);
%>

[
<%
	int i = 0;
	while(rs.next()){
		int id = rs.getInt("lprod_id");
		String gu = rs.getString("lprod_gu");
		String nm = rs.getString("lprod_nm");
		if(i > 0) out.print(",");
%>		
	<%--json데이터 생성 --%>
		{
			"id" : "<%= id%>",
			"gu" : "<%= gu%>",
			"nm" : "<%= nm%>"
		}

<%	
	i++;
	}
%>
]