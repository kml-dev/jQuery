<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 클라이언트 요청시 전송데이터를 받는다
	String buyer_id = request.getParameter("id");

	// 1. 2.
	Connection con = DBConnect.getCon();
	
// 	// 3.
// 	String sql = "select * from buyer where buyer_id='" + buyer_id + "'";
	
// 	// 4. 
// 	Statement stmt = con.createStatement();
	
// 	// 5.
// 	ResultSet rs = stmt.executeQuery(sql);
	
	// 3.
	String sql = "select * from buyer where buyer_id= ?";
	
	// 4.
	PreparedStatement stmt = con.prepareStatement(sql);
	stmt.setString(1, buyer_id);
	
	// 5.
	ResultSet rs = stmt.executeQuery();
	if(rs.next()){
		String a = rs.getString("buyer_id");
		String b = rs.getString("buyer_name");
		String c = rs.getString("buyer_lgu");
		String d = rs.getString("buyer_bank");
		String e = rs.getString("buyer_bankno");
		String f = rs.getString("buyer_bankname");
		String g = rs.getString("buyer_zip");
		String h = rs.getString("buyer_add1");
		String i = rs.getString("buyer_add2");
		String j = rs.getString("buyer_comtel");
		String k = rs.getString("buyer_fax");
		String l = rs.getString("buyer_mail");
%>
	{
		"id" : "<%=a %>",
		"name": "<%=b %>",
		"lgu": "<%=c %>",
		"bank": "<%=d %>",
		"bankno": "<%=e %>",
		"bankname": "<%=f %>",
		"zip": "<%=g %>",
		"add1": "<%=h %>",
		"add2": "<%=i %>",
		"comtel": "<%=j %>",
		"fax": "<%=k %>",
		"mail": "<%=l %>"
	}
<%		
	}
%>