<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="top.jsp" %>
<!DOCTYPE>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>레퍼런스 웹/앱팀</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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

<div class="container">

  <h2>게시판</h2>          

  <table class="table table-hover">

    <thead>

      <tr>

        <th>번호</th>

        <th>제목</th>

        <th>글쓴이</th>

        <th>작성일</th>

      </tr>

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
    
  <a href="boradwrite.jsp" class="btn btn-primary pull-right">글쓰기</a>

</div>

</body>
</html>
 <jsp:include page = "bottom.jsp" flush = "false"/>