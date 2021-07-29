<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>form_01의 jsp파일</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String pname = request.getParameter("name1");
		String ptel = request.getParameter("tel1");
		String ppass = request.getParameter("pass1");
		String pgen = request.getParameter("gender");
		String[] phob = request.getParameterValues("hobby");
		String pfile = request.getParameter("file");
		String pres = "";
		
		for(int i=0; i < phob.length; i++){
			pres += phob[i] + "&nbsp&nbsp";			
		}
		String pgend = "";
		if(pgen.equals("남자")){
			pgend = "남자이고";
		}else{
			pgend = "여자이고";
		}
	%>
	<div>
		당신의 이름은 <%=pname %>입니다.<br>
		당신의 전화번호는 <%=ptel %>이고 비밀번호는 <%=ppass %>입니다.<br>
		당신은 <%=pgen %>이고 취미는 <%=pres %>입니다.<br>

	</div>
</body>
</html>