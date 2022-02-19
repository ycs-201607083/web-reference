<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%-- 
<% session.getAttribute("StdID"); %>
<% session.getAttribute("Name"); %>
<% session.getAttribute("LoginID"); %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link href="css/main.css" type="text/css" rel = "stylesheet">
<style>

</style>
</head>
<body>
<!-- top 레이아웃 include -->
<jsp:include page = "top.jsp" flush = "false"/>
<br><br>

<div class="mainbatch1">
		<jsp:include page = "info.jsp" flush = "false"/>
		<!--<jsp:include page = "category.jsp" flush = "false"/>-->

<table style="border:1px solid black;">
	<tr><td><jsp:include page = "notice.jsp" flush = "false"/></td></tr>
	<tr><td><jsp:include page = "newpost.jsp" flush = "false"/></td></tr>
</table>	
</div>

</body>
</html>