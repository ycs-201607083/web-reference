<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>board write</title>
<style type="text/css">

.table {
      border-collapse: collapse;      
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
    .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    .table tr th:last-child{
      text-align: left;
    }
    
button {
border: 1.5px solid #343A40;
width: 150px;
margin : 10px;
font-weight: 400;
color: #343A40;
padding: 8px 25px; 
cursor:pointer;
border-radius:100px;
}    


fieldset { 
border: 0px solid #343A40;
padding: 10px;
margin: 10px;
}

textarea {
    width: 100%;
    border: none;
    resize: none;
  }
  
.title{
background: #D6EEF2;
}

</style>
</head>
<body class="pt-5">


		
	<fieldset>
	<legend>게시판 작성</legend>	
	<table class="table">
	<tr>
	<th>제목</th>
	<th><textarea class = "title" id = "title" placeholder="제목을 입력해주세요." rows = "2"></textarea></th></tr>
	<th>게시판 종류</th>
	<th>
                        <select name="menu">
                            <option>일상 공유</option>
                            <option>코딩 공유</option>
                            <option>웹/앱</option>
                            <option>네트워크</option>                        
                        </select></th>
    <tr>
    <td>내용</td>
    <td><textarea  placeholder="내용을 입력하세요." cols = "80" rows = "20" ></textarea></td></tr>
    
    
  </table> 
  </fieldset>
<button type="button" onclick="location.href='#'">게시글 작성</button>
<button type="button" onclick="javascript:history.back()">취소</button>
</body>
</html>