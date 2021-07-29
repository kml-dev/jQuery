<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 드라이버 클래스 로드 2. Connection 객체 얻기
	Connection con = DBConnect.getCon();

	// 3.
	String sql = "select buyer_id, buyer_name from buyer";
	
	// 4. 실행 객체
	Statement stmt = con.createStatement();
	
	// 5. 실행 - ResultSet 리턴 
	ResultSet rs = stmt.executeQuery(sql);
%>
[
<%
	int i = 0;
	while(rs.next()){
		String a = rs.getString("buyer_id");
		String b = rs.getString("buyer_name");
		if(i > 0) out.print(",");		
%>
	{
		"id" : "<%= a%>",
		"name": "<%= b%>"
	}
<%
		i++;
	}
%>
]