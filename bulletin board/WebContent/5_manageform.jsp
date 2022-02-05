<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시판</title>
</head>
<link href="./css/kms.css" rel="stylesheet">
<body>
	<header>
		<form action="3_boardmain.jsp" method="post">
			<input class="head" type="submit" value="공백">
		</form>
	</header>

	<div class="container">
			<b>관리자 게시판</b>
	</div>
	
	<h2>회원 관리</h2>
	<!-- 회원관리 게시판, 승인제, 승인불가 기능 -->
	<div class="list">
	회원번호, 회원 닉네임, 회원 가입날짜?
	</div>
	<br>
	<input type = "button" class = "mem_ok" value = "승인확인">
	
	<input type = "button" class = "mem_no" value = "승인거절">
	
	<hr>
	<h2>게시판 관리</h2>
	<!-- 게시판 내 글 삭제 및 기타 기능 추가 -->
	<div class="list">
	게시글 번호, 게시판 종류, 게시글 이름, 게시자 닉네임
	</div>
	<br>
	<input type = "button" class = "mem_ok" value = "게시글 삭제">
	
	<input type = "button" class = "mem_no" value = "게시글 보기">
</body>
</html>