<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="list-group mb-4">
					<a class="list-group-item list-group-item-info text-center font-weight-bold">개인 정보</a>
					<a class="list-group-item list-group-item-action text-center font-weight-bold">
					
					학번: <% request.getParameter("StdID"); %><br>
					<% request.getParameter("Name"); %>(<% request.getParameter("LoginID"); %>)  <br>
					
					</a>
				</div>
			</div>
			
</body>
</html>