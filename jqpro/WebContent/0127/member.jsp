<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. Connection 객체 얻어오기 
	Connection con = DBConnect.getCon();

	// 2. sql
	String sql = "select mem_id, mem_name from member";
	
	// 3. Statement객체, PreparedStatement
	Statement stmt = con.createStatement();
	//PreparedStatement pst = con.prepareStatement(sql);
	
	// 4. 실행 - ResultSet 결과를 리턴
	ResultSet rs = stmt.executeQuery(sql);
%>
[
<%
	int i = 0;
	while(rs.next()){
		String id = rs.getString("mem_id");
		String name = rs.getString("mem_name");
		if(i > 0) out.print(",");
%>
	{
		"id" : "<%= id%>",
		"name" : "<%= name%>"
	}
<%		
		i++;
	}
%>
]