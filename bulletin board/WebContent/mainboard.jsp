<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style type="text/css">
form{
border: 2px solid #343A40;
padding: 10px;
margin: 10px;

}
</style>
</head>
<body class="pt-5">
<div class = "top">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="main.jsp">웹페이지</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/etc">홈
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
	</div>
	
	<div class="container">
		<div class="row-1">
		<div class="col-lg-3">
		<br>
		
		<div class="">
		<h3>LOGIN</h3>
		<form>
		<label>ID</label>
		<input type="text" placeholder="ID" ><br>
		<label>PASSWORD</label>
		<input type="password" placeholder="password" >
		</form>
		</div>
		

			
				<h3 class="my-4 text-center">Category</h3>
				<div class="list-group mb-4">
					<a class="list-group-item list-group-item-info text-center font-weight-bold">게시판</a>
					<a href="boardviewer.jsp" class="list-group-item list-group-item-action text-center font-weight-bold">웹/앱</a> 
					<a href="#"	class="list-group-item list-group-item-action text-center font-weight-bold">게임</a>
					<a href="#"	class="list-group-item list-group-item-action text-center font-weight-bold">네트워크</a>
					<a href="#"	class="list-group-item list-group-item-action text-center font-weight-bold">인공지능</a>			
				</div>
			</div>
			
			</div>
	
		<div class="row-2">
		<br>
		
		<div class="">
		<h3>LOGIN</h3>
		<form>
		<label>ID</label>
		<input type="text" placeholder="ID" ><br>
		<label>PASSWORD</label>
		<input type="password" placeholder="password" >
		</form>
		</div>
		

			
				<h3 class="my-4 text-center">Category</h3>
				<div class="list-group mb-4">
					<a class="list-group-item list-group-item-info text-center font-weight-bold">게시판</a>
					<a href="boardviewer.jsp" class="list-group-item list-group-item-action text-center font-weight-bold">웹/앱</a> 
					<a href="#"	class="list-group-item list-group-item-action text-center font-weight-bold">게임</a>
					<a href="#"	class="list-group-item list-group-item-action text-center font-weight-bold">네트워크</a>
					<a href="#"	class="list-group-item list-group-item-action text-center font-weight-bold">인공지능</a>			
				</div>
			</div>
			
			</div>
</body>
</html>