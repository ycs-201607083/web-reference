<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="top.jsp" %>
<%@ include file="category2.jsp" %>
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

<title>레퍼런스 웹/앱팀</title>
</head>

<title>게시판 페이지</title>

<!-- 링크를 달때쓰는 태그들을 검은색으로 만들고 밑줄이 그어지지 않게 스타일 설정 -->

<style type="text/css">

	a, a:hover {

		color: #000000;

		text-decoration: none;

	}

</style>

</head>

<body>


<div class="list">

	<legend>코딩 공유</legend>	
	<table class="table">
	<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
    <tr><td>1</td><td>성적계산기</td><td>김개똥</td><td>20xx-xx-xx</td></tr>
    <tr><td>2</td><td>계산기 프로그램</td><td>김아무개</td><td>20xx-xx-xx</td></tr>
    <tr><td>3</td><td>자바스크립트 과제</td><td>김씨</td><td>20xx-xx-xx</td></tr>
    <tr><td>4</td><td>게임 개발 코딩 일지</td><td>김장독</td><td>20xx-xx-xx</td></tr>
  </table> 
</div>
  <tbody border="1">


					<%

						Connection conn=null;
						PreparedStatement pstmt = null;

						String jdbc_driver = "com.mysql.cj.jdbc.Driver";
						String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";

						try {
							Class.forName(jdbc_driver);

							conn = DriverManager.getConnection(jdbc_url, "root", "jsp2021");

							String sql2 = "select * from board";
							pstmt = conn.prepareStatement(sql2);
							ResultSet rs = pstmt.executeQuery();

							while (rs.next()) {
					%>
					<tr>
						<!-- 받아온 값들을 해당 테이블에 넣기 위한 반복문 -->
						<td>
							<%
								out.print(rs.getString(1));
							%>
						</td>
						<td>
							<%
								out.print(rs.getString(2));
							%>
						</td>
						<td>
							<%
								out.print(rs.getString(3));
							%>
						</td>
						<td>
							<%
								out.print(rs.getString(4));
							%>
						</td>
						
					</tr>

					<%
						}

							rs.close();
							pstmt.close();
							conn.close();

						} catch (Exception e) {
							System.out.println(e);
						}
					%>


				</tbody>


				<tfoot>

				</tfoot>


			</table>

		</article>

	</form>>  

<button type="button" onclick="location.href='boardwrite.jsp'">게시글 작성</button>
</div>

</body>
</html>
