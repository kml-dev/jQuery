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
	String sql = "select mem_id, mem_name, mem_hp from member";
	
	// 5. ResultSet으로 리턴
	ResultSet rs = stmt.executeQuery(sql);
%>
	[
<%
	// 6. 결과 가져오기
	int i = 0;
	while(true){
		if(!(rs.next())) break;
		
		String id = rs.getString("mem_id");
		String name = rs.getString("mem_name");
		String hp = rs.getString("mem_hp");
		
		// json/데이터 생성
		if(i > 0) out.print(",");
%>
		{
			"mid"  : "<%= id%>",
			"mname": "<%= name%>",
			"mhp"  : "<%= hp%>"
		}
<%
		i++;
	}
%>
	]

