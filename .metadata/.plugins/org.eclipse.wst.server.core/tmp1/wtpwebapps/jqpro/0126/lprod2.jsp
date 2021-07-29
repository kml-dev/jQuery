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
<table border="1">
<tr class="tr1">
	<td>아이디</td>
	<td>지유</td>
	<td>엔엠</td>
</tr>
<%
	int i = 0;
	while(rs.next()){
		int id = rs.getInt("lprod_id");
		String gu = rs.getString("lprod_gu");
		String nm = rs.getString("lprod_nm");
%>		
	<tr>
		<td><%= id %></td>
		<td><%= gu %></td>
		<td><%= nm %></td>
	</tr>
<%	
	i++;
	}
%>
</table>