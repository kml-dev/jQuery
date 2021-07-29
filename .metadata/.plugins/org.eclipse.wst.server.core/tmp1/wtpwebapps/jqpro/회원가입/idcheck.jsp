<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 클라이언트 요청시 전송되는 데이터를 받는다
	String userId = request.getParameter("id");
	
	Connection con = DBConnect.getCon();
	
	// 2. sql
	
	String sql = "select mem_id from member where mem_id='" + userId + "'" ;

	// 3. Statement
	Statement stmt = con.createStatement();
	
	// 4.
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
%>
	{"sw" : "사용 불가능합니다."}
<%
	}else{
%>
	{"sw" : "사용 가능합니다."}
<%	
	}
%>