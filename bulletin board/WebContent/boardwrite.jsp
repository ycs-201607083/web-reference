<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./css/boradwrite_css.css" type="text/css" rel = "stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">

<title>board write</title>
</head>
<body class="pt-5">

<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="main.jsp">Reference</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
				</ul>
			</div>
		</div>
	</nav>
		
		<br>

	<fieldset>
	<h3>게시글 작성</h3>
	<hr>
	<div class = "mar">
<select name="kind">
	<option value = "none">게시할 게시판을 선택해주세요.</option>
	<option value = "team">전체</option>
	<option value = "web">웹/앱</option>
	<option value = "game">게임</option>
	<option value = "net">네트워크</option>
	<option value = "ai">인공지능</option>
	</select>
</div>
	<table class="table">
	<tr><th>제목</th><th><textarea class = "title" id = "title" placeholder= "제목을 입력해주세요." rows= "1"></textarea>
	<form action="main.jsp" method="post">
</th></tr>
	
    <tr><td>내용</td><td><textarea  placeholder="내용을 입력하세요." cols = "80" rows = "20" ></textarea></td></tr>
  </table> 
  </fieldset>
 	<button type="button" class="btn1" value="게시글 작성">게시글 작성</button>
	<button type="button" class="btn1" value="취소">취소</button>
  
</body>
</html>