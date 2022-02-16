<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<% session.getAttribute("StdID"); %>
<% session.getAttribute("Name"); %>
<% session.getAttribute("LoginID"); %>
<!DOCTYPE html>
<html>
<title>main</title>
<body>
<!-- top 레이아웃 include -->
<jsp:include page = "top.jsp" flush = "false"/>
<br><br>
<jsp:include page = "info.jsp" flush = "false"/>
<jsp:include page = "notice.jsp" flush = "false"/>
<jsp:include page = "category.jsp" flush = "false"/>
<jsp:include page = "newpost.jsp" flush = "false"/>	
</body>
</html>