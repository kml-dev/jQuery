<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	p{
		box-sizing : border-box;
	}

	.p1{
		float : left;
		width : 75%;
		height: 20px;
	}
	
	.p2{
		float : right;
		width : calc(24% - 1%);
		height: 20px; 
	}
	
	.p3{
		clear: both;
	}
	
	.reply{
		height: 44px;
		vertical-align: top;
	}
</style>
</head>
<body>

<div class="container">
  <h2>Accordion Example</h2>
  <div class="panel-group" id="accordion">
  
  <%for(int i = 0; i < 3; i++){ %>
    <div class="panel panel-default">
    
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%=i%>">Collapsible Group <%=i+1%></a>
        </h4>
      </div>
      <div id="collapse<%=i%>" class="panel-collapse collapse ">
        <div class="panel-body">
        	<p class="p1">작성자 : 홍길동&nbsp;&nbsp;&nbsp;
        	이메일 : kk123@korea.com&nbsp;&nbsp;&nbsp;
        	날짜 : 2020.11.11&nbsp;&nbsp;&nbsp;
        	조회수 : 0
        	</p>
        	<p class="p2">
        		<input type="button" value="수정">
        		<input type="button" value="삭제">
        	</p>
        	<p class="p3">
        		안녕하세요<br>
        		게시판 폼입니다<br>
        		데이터가 없어서 아쉬워요
        	</p>
        	<p>
        		<textarea rows="" cols="80"></textarea>
        		<input type="button" value="등록" class="reply">
        	</p>        	
        </div>
      </div>
    </div>
   <%}%>
  </div> 
</div>
    
</body>
</html>
