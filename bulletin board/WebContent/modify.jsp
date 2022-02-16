<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="./css/boradwrite_css.css" type="text/css" rel = "stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>글 수정</title>
</head>
<body>
<jsp:include page = "top2.jsp" flush = "false"/>
<form action="writeOK.jsp" method="post" onsubmit="return ContentCheck()" name="write">
	<fieldset>
	</div>
	
	<table class="table">
	<tr><th>제목</th><th><a class = "title" id = "title" name = "title" rows= "1">saaaaaa </a>
</th></tr>
	<tr><td>작성자</td><td><a name = "content" >wasd</a></td></tr>
	 
    <tr><td>글 내용</td><td><a name = "content" cols = "80" rows = "20" >jsp 게시판 내용 적어봤습니다</a></td></tr>
  </table> 
  
 
  </fieldset>
	<button type="submit" class="btn1">현재 글 수정</button>
	<button type="button" class="btn1" onclick="javascript:history.back()">현재 글 삭제</button>
	 <button type="submit" class="btn1">이전 글 목록</button>
  </form>
</body>
</html>