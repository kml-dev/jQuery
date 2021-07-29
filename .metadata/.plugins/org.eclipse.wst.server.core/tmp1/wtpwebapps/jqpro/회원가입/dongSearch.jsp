<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.or.ddit.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	
	// 클라이언트 요청시 전송데이터 가져오기
	String vdong = request.getParameter("dong");
	
	// 
	Connection con = DBConnect.getCon();
	
	String sql = "select * from ziptb where dong like '" + vdong + "%'";
	
	Statement stmt = con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);	
%>
[
<%
	int i = 0;
	while(rs.next()){
		String zip = rs.getString("zipcode");
		String sido = rs.getString("sido");
		String gubun = rs.getString("gugun");
		String dong = rs.getString("dong");
		String bunji = rs.getString("bunji");
		
		if(bunji == null) bunji = "";
		if(i > 0) out.print(",");
%>
	{
		"code" : "<%=zip %>",
		"addr" : "<%=sido %>",
		"bunji": "<%=bunji %>"	
	}
	
<%
		i++;
	}
%>
]