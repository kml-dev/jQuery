<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 테스트</title>
<style>
	div{
		background : lightblue;
	}
	span{
		color : blue;
		font-size : 1.5em;
	}
	
</style>
</head>
<body>
	<h1>JSP : Java Server page</h1>
	<p>java와 html코드르 혼용해서 기술할 수 있다</p>
	<p>front end 역할과 back end 역할을 할 수 있다</p> 
	<p>자바문자을 기술할 때는 &lt;%  %&gt;기호 사이에 기술한다</p>
	<p>자바변수를 출력할 때 &lt;%=변수이름%&gt;</p>
	<p>클라이언트에서 데이터 입력 후 전송(제출)하면 jsp파일에서 데이터를 받는다</p>
	<p>request내장 객체를 이용해서 값을 받는다</p>
	<p>String 변수명 = request.getParameter("name")</p>
	
<%
	request.setCharacterEncoding("UTF-8");
	String s1 = request.getParameter("name");
	String s2 = request.getParameter("tel");
	String s3 = request.getParameter("pass");
%>
<div>
	<p>당신의 이름은 <%= s1 %>입니다</p>
	<span><%= s1 %>님 반갑습니다.</span><br>
	<%= s2 %>번호로 연락드리겠습니다.<br>
	당신의 비밀번호는 <%=s3 %>입니다.
</div>
</body>
</html>