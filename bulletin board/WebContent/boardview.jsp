<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./css/boradwrite_css.css" type="text/css" rel = "stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page = "top2.jsp" flush = "false"/>	
<body>
<br>
<form action="writeOK.jsp" method="post" onsubmit="return ContentCheck()" name="write">
<fieldset>
	<table class="table">
	<tr><th>제목</th>
	<th>
	<textarea class = "title" id = "title" name = "title" rows= "1"></textarea>

</th></tr>
	  <tr><td>작성자</td><td><textarea name = "title" rows = "1" ></textarea></td></tr>

    <tr><td>작성 일자</td><td><textarea name = "title" rows = "1" ></textarea></td></tr>
    <tr><td>내용</td><td><textarea name = "content" cols = "80" rows = "20" ></textarea></td></tr>
  </table> 
  
  </fieldset>
	
	<button type="button" class="btn1" onclick="">수정완료</button>
  	<button type="button" class="btn1" onclick="javascript:history.back()">수정 수정</button>
  	<button type="button" class="btn1">삭제</button>
  </form>
</body>
</html>
</body>
</html>