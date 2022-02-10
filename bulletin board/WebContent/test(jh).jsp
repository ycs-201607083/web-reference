<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시판js</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
<style type="text/css">

.table {
      border-collapse: collapse;
      border-top: 3px solid #343A40;
      height: 300px;
      overflow: scroll;
    }  
    .table th {
      color: #343A40;
      background: #D6EEF2;
      text-align: center;
    }
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    
button {
border: 1.5px solid #343A40;
width: 150px;
margin : 10px;
font-weight: 400;
color: #343A40;
padding: 8px 25px; 
cursor:pointer;
border-radius:100px;
}    


fieldset { 
border: 2px solid #343A40;
padding: 10px;
margin: 10px;
}

</style>
</head>

<!-- 네비바를 fiexd-top으로 설정했을 때 컨텐츠와 겹치는 문제 방지 -->
<body class="pt-5">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="main.jsp">관리자 게시판</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
					<a class="nav-link" href="main.jsp">홈
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="login.jsp">로그인</a></li>
					<li class="nav-item"><a class="nav-link"
						href="join.jsp">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<form method="get" action=''>
	<!-- 회원관리 게시판, 승인제, 승인불가 기능 -->
	<div class="list">
	<fieldset>
	<legend align="center">회원관리</legend>
	<table class="table">
	<tr><th>선택</th><th>No.</th><th>이름</th><th>성별</th><th>작성일</th></tr>
    <tr><td><input type="checkbox"></td><td>1</td><td>아무개</td><td>여</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>2</td><td>홍길노</td><td>남</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>3</td><td>홍길량</td><td>여</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>4</td><td>홍길진</td><td>남</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>3</td><td>홍길량</td><td>여</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>4</td><td>홍길진</td><td>남</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>3</td><td>홍길량</td><td>여</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>4</td><td>홍길진</td><td>남</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>3</td><td>홍길량</td><td>여</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>4</td><td>홍길진</td><td>남</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>3</td><td>홍길량</td><td>여</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>4</td><td>홍길진</td><td>남</td><td>20xx-xx-xx</td></tr>
  </table> 
	</div>
	<br>
	<button type = "button" class = "mem_ok" value = "승인">승인</button>
	
	<button type = "button" class = "mem_no" value = "거절">거절</button>
	
	<hr>
	<!-- 게시판 내 글 삭제 및 기타 기능 추가 -->
	<div class="list">
	<fieldset>
	<legend>게시판 관리</legend>
	
	
	<table class="table">
	<tr><th>선택</th><th>No.</th><th>게시판 종류</th><th>작성자</th><th>작성일</th></tr>
    <tr><td><input type="checkbox"></td><td>1</td><td>웹/앱</td><td>관리자</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>2</td><td>게임</td><td>관리자</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>3</td><td>네트워크</td><td>관리자</td><td>20xx-xx-xx</td></tr>
    <tr><td><input type="checkbox"><td>4</td><td>인공지능</td><td>관리자</td><td>20xx-xx-xx</td></tr>
  </table> 
  </fieldset>
	</div>
	
	<br>
	<button type = "button" class = "mem_ok" value = "게시글 삭제">게시글 삭제</button>	
	<button type = "button" class = "mem_no" value = "게시글 보기">게시글 보기</button>
	</form>
	
</body>
</html>