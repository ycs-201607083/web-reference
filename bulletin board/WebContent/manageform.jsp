<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시판</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="./css/manageform_css.css" type="text/css" rel="stylesheet">
</head>
<jsp:include page = "top2.jsp" flush = "false"/>

<br><br>

	<form method="get" action=''>
		<!-- 회원관리 게시판, 승인제, 승인불가 기능 -->
		<div class="list">
			<fieldset >
				<legend align="center">&nbsp;회원관리</legend>
				<div height=200vh overflow-y= scroll>
					<table class="table text-center" >
						<tr height=20px;>
							<th>선택</th>
							<th>No.</th>
							<th>학번</th>
							<th>이름</th>
							<th>ID</th>
							<th>가입신청날짜</th>
						</tr>
						<!-- DB에서 subcheck가 X인 사람들만 검색하여 리스트 작성 -->
						<!-- No. 는 for문에서 사용되는 변수를 이용 -->
						<%
						// DB에서 id에 맞는 정보들을 가져온 값
						String StdID = null; // 학번
						String ID = null; // 아이디
						String Name = null; // 이름
						String signcheck = null;
						String date = null; // 가입 신청 날짜
						int i = 1;

						//DB연결
						Connection conn = null;
						PreparedStatement pstmt = null;
						try {
							String jdbcUrl = "jdbc:mysql://localhost:3306/web_ref_db?useUnicode=yes&characterEncoding=UTF8";
							String dbId = "admin";
							String dbPass = "password";
							Class.forName("com.mysql.jdbc.Driver");
							conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

							// SQL문으로 DB내에서 로그인하려는 ID와 PW 이름 검색
							String sql = "select stdid, name, id, sign_date from member where signcheck = 'X'";
							pstmt = conn.prepareStatement(sql);
							ResultSet result = pstmt.executeQuery();

							// 결과 레코드 하나씩마다 ID PW 이름 변수에 입력
							while (result.next()) {
								StdID = result.getString("stdid");
								ID = result.getString("id");
								Name = result.getString("name");
								date = result.getString("sign_date");
						%>
						<tr height=30px>
							<td><input type="checkbox"></td>
							<td><%=i%></td>
							<td><%=StdID%></td>
							<td><%=Name%></td>
							<td><%=ID%></td>
							<td><%=date%></td>
						</tr>
						<%
						i++;
						}

						// 에러 처리
						} catch (SQLException ex) {
						ex.printStackTrace();
						} finally {
						if (pstmt != null)
						try {
							pstmt.close();
						} catch (SQLException sqle) {
						}

						if (conn != null)
						try {
							conn.close();
						} catch (SQLException sqle) {
						}
						}
						%>
						
						<tr>
						</tr>
					</table>
				</div>
			</fieldset>
		</div>

		<br>
		<div style="display: flex; justify-content: center; align-items: center;">
			<button type="button" class="mem_ok" value="승인" onsubmit="memok.jsp">승인</button>
			<button type="button" class="mem_no" value="거절">거절</button>
		</div>
		<hr>

		<!-- 게시판 내 글 삭제 및 기타 기능 추가 -->
		<div class="list">
			<fieldset>
				<legend>&nbsp;게시판 관리</legend>
				<div style="overflow-y: scroll;">
					<table class="table">
						<tr>
							<th>선택</th>
							<th>No.</th>
							<th>게시판 종류</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>1</td>
							<td>웹/앱</td>
							<td>관리자</td>
							<td>20xx-xx-xx</td>
						</tr>
						<tr>
							<td><input type="checkbox">
							<td>2</td>
							<td>게임</td>
							<td>관리자</td>
							<td>20xx-xx-xx</td>
						</tr>
						<tr>
							<td><input type="checkbox">
							<td>3</td>
							<td>네트워크</td>
							<td>관리자</td>
							<td>20xx-xx-xx</td>
						</tr>
						<tr>
							<td><input type="checkbox">
							<td>4</td>
							<td>인공지능</td>
							<td>관리자</td>
							<td>20xx-xx-xx</td>
						</tr>
					</table>
				</div>
			</fieldset>
		</div>

		<br>
		<div style="display: flex; justify-content: center; align-items: center;">
			<button type="button" class="mem_ok" value="게시글 삭제">게시글 삭제</button>
			<button type="button" class="mem_no" value="게시글 보기">게시글 보기</button>
		</div>
	</form>

</body>
</html>