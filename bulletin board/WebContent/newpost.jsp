<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
margin : 10px;
font-weight: 400;
color: #343A40;
padding: 8px 25px; 
cursor:pointer;
border-radius:100px;
}    

form{
margin : 10px;
}

fieldset { 
border: 2px solid #343A40;
padding: 10px;
margin: 10px;
}

</style>
</head>

<!DOCTYPE>

<html>

<head>

<body>
<div class="list">

	<legend>최근 게시글</legend>	
	<a href="#" class="" style="padding-left: 47em">전체보기</a>
	<table class="table">
	<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
    <tr><td>1</td><td>귀여운 고양이 사진 공유</td><td>관리자</td><td>20xx-xx-xx</td></tr>
    <tr><td>2</td><td>사이트 이용 규칙</td><td>관리자</td><td>20xx-xx-xx</td></tr>
    <tr><td>3</td><td>계산기 공유합니다</td><td>관리자</td><td>20xx-xx-xx</td></tr>
  </table> 
</div>
</body>
</html>