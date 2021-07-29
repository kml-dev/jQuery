<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>type 속성 JSP</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String sid = request.getParameter("id");
	String sname = request.getParameter("name");
	String spass = request.getParameter("pass");
	String scheck = request.getParameter("check");
	String sgend = request.getParameter("gender");
	String[] likes= request.getParameterValues("like");
	String sfile = request.getParameter("file");
	String res = "";
	
	for(int i=0; i < likes.length; i++){
		res += likes[i] + "&nbsp&nbsp";		
	}
	
	String str="";
	 if(scheck.equals("0")){
		 str = "내국인입니다.";
	 }else{
		 str = "외국인입니다.";
	 }
%>

<%= sid %>님 즐거운 날 되세요.<br>
당신의 이름은 <%=sname %>이고 <%=str %><br>
당신의 성별은 <%=sgend %>이고 취미는 <%=res %>입니다.<br>
첨부하신 파일은 <a href="http://localhost/webpro/images/<%=sfile%>"><%=sfile %></a>입니다.

</body>
</html>