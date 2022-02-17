<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%-- 
<% session.getAttribute("StdID"); %>
<% session.getAttribute("Name"); %>
<% session.getAttribute("LoginID"); %> --%>
<!DOCTYPE html>
<html>
<head>
<title>main</title>
<link href="css/main.css" type="text/css" rel = "stylesheet">
</head>
<body>
<!-- top 레이아웃 include -->
<jsp:include page = "top.jsp" flush = "false"/>
<br><br>
<div class="mainbatch1">
<jsp:include page = "info.jsp" flush = "false"/>
<jsp:include page = "notice.jsp" flush = "false"/>
</div>
<div class="mainbatch2">
<jsp:include page = "category.jsp" flush = "false"/>
<jsp:include page = "newpost.jsp" flush = "false"/>	
</div>
</body>
</html>