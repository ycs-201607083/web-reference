<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board write</title>
</head>

<link href="./css/kms.css" rel="stylesheet">
<body>
	<header>
		<form action="3_boardmain.jsp" method="post">
			<input class="head" type="submit" value="공백">
		</form>
	</header>

<div class = "title_name">
<b>게시판 종류</b>
	<br><form action="" method="post">
	<select name="kind">
	<option value = "web">앱/웹</option>
	<option value = "game">게임</option>
	<option value = "net">네트워크</option>
	<option value = "AI">인공지능</option>
	</select>
</div>

	<div class="title_name">
		<b>닉네임</b>
		<br> <input type="text" id = "nik" placeholder="닉네임 입력">
	</div>
	
	<div class="title_name">
		<b>제목 입력</b>
		<br> <input type="text" class = "title" id = "title" placeholder="제목을 입력해주세요.">
	</div>
	
	<div class="title_name">
	<textarea  placeholder="내용을 입력하세요." cols = "70" rows = "10"></textarea>
	</div>
	
			<input type="submit" class = "a" value="등록하기">
		
		<form action="3_boardmain.jsp" method="post">
			<input type="submit" class = "b" value="취소">
		</form>
		

</body>
</html>