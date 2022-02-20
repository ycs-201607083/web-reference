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

<!-- 전체적인 배치 : { [ 프로필 , 카테고리 ] , [ 공지사항 , 최근 게시글 ] } -->
<div class="mainbatch1">
		<jsp:include page = "info.jsp" flush = "false"/>
		<!--<jsp:include page = "category.jsp" flush = "false"/>-->
<!-- notice와 newpost를 세로로 정렬하기 위한 table 적용 -->
<table style="border:1px solid black;">
	<tr><td><jsp:include page = "notice.jsp" flush = "false"/></td></tr>
	<tr><td><jsp:include page = "newpost.jsp" flush = "false"/></td></tr>
</table>	
</div>

</body>


<!-- 
	모두에게 전하는 메시지
	제발 작업하시기 전에 충분한 소통과 pull 을 해주세요.
	누군가 해놓은 작업이 적용되지 않은 상태에서 작업을 하여 push를 하게 되면 다 사라집니다.
	
	또한 작업을 하시는 중에 다른 팀원들이 코드를 이해할 수 있도록 주석을 달아주세요.
	코드를 처음부터 이해하는 건 한 사람이면 충분합니다.
	
	이 버전에서 고쳐야 할 점	(자신이 해결하면 고친부분 주석으로 설명쓰고 push 하기)
	프로필에 사진이 들어가야 한다.												=> 코드 있음(지혜) 적용만 하면 됨
	프로젝트 완성 시 container마다 border 속성 수정하기
	
	
	왜 백엔드인 제가 프론트 마무리를 하고 있는진 모르겠지만 마지막 프로젝트인 만큼 깔끔쓰하게 매무리 합시다.
	(이 주석은 프로젝트가 완성되면 폭파됩니다)
 -->
</html>


