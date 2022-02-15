<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="top.jsp" %>
<br><br>
<%@ include file="category.jsp" %>

<style type="text/css">
.table {
      border-collapse: collapse;
      border-top: 3px solid #343A40;
    }  
    .table th {
      color: #343A40;
      background: #D6EEF2;
      text-align: center;
    }
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    
button {
	border: 1.5px solid #343A40;
	width: 150px;
	margin: 10px;
	font-weight: 400;
	color: #343A40;
	padding: 8px 25px;
	cursor: pointer;
	border-radius: 100px;
} 

.btn1 {
	border-radius: 100px;
	margin-bottom:20px;
	margin-right:10px;
	float:right;
}

form{
margin : 10px;
}

fieldset { 
border: 2px solid #343A40;
padding: 10px;
margin: 10px;
}
<!-- 링크를 달때쓰는 태그들을 검은색으로 만들고 밑줄이 그어지지 않게 스타일 설정 -->
a, a:hover {

	text-decoration: none;

	}
</style>
</head>

<!DOCTYPE>

<html>

<head>

<title>레퍼런스 웹/앱팀</title>
</head>

<title>게시판 페이지</title>


</head>

<body>


<div class="list">

	<legend>일상 공유</legend>	
	<table class="table">
	<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
    <tr><td>1</td><td>점메추</td><td>김개똥</td><td>20xx-xx-xx</td></tr>
    <tr><td>2</td><td>롤 티어 상승!</td><td>김아무개</td><td>20xx-xx-xx</td></tr>
    <tr><td>3</td><td>기타 연주중</td><td>김씨</td><td>20xx-xx-xx</td></tr>
    <tr><td>4</td><td>로아에서 키운 내 딸랑구</td><td>김장독</td><td>20xx-xx-xx</td></tr>
  </table> 

	</div>

	<button type="button" class="btn1"  onclick="location.href='boardwrite.jsp'">게시글 작성</button>

</body>
</html>
