<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	h2{
		color: blue;
	}
	
	h3{
		color: green;
	}
	
	p{
		font-size : 2.0em;
		color : red;
	}
	
</style>

<%
request.setCharacterEncoding("UTF-8");
String userName = request.getParameter("name");
String userAddr = request.getParameter("addr");

%>

<h2>안녕하세요 <%=userName %>님</h2>
<h3>당신의 주소는 <%=userAddr %>입니다</h3>
<p>즐거운 오후 되세요~~</p>
