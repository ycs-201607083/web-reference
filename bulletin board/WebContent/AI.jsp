<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="top.jsp" %>
<br><br>

<%@ include file="info.jsp" %>


</head>

<!DOCTYPE>

<html>

<head>

<title>레퍼런스 웹/앱팀</title>
</head>

<title>게시판 페이지</title>

</head>

<body>

<%
String kind = (String)request.getParameter("kind");
String name = "";

switch(kind){

case "web" :
	name = "웹/앱 팀";
	break;
case "ai" :
	name = "인공지능 팀";
	break;
case "net" :
	name = "네트워크 팀";
	break;
case "game" :
	name = "게임 팀";
	break;
case "daily" :
	name = "일상 공유";
	break;
case "fun" :
	name = "유머 게시판";
	break;
case "manager" :
	name = "관리자";
	break;
}
%>

<div class="list">

	<legend> <%=name %> 게시판</legend>	
	<table class="table">
	<tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
    
    <%
    String b_num = null; //게시글 번호
    String b_title = null; //게시글 제목
    String b_writer = null; //게시글 작성자
    String b_date = null; //게시글 날짜
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try{
    	String jdbcUrl = "jdbc:mysql://localhost:3306/web_ref_db?useUnicode=yes&characterEncoding=UTF8";
		String dbId = "admin";
		String dbPass = "password";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		//sql문으로 db에 번호, 제목, 작성자, 종류, 날짜 검색
		String sql = "select boardid, title, boardtype, writer, wrdate from board where boardtype=? order by boardid desc limit 10";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, kind);
		rs = pstmt.executeQuery();
		
		//각각의 결과 레코드를 변수에 입력
		while(rs.next()){
			b_num = rs.getString("boardid");
			b_title = rs.getString("title");
			b_writer = rs.getString("writer");
			b_date = rs.getString("wrdate");
			%>
		<tr><td><%=b_num%></td>
		<td><%=b_title%></td>
		<td><%=b_writer%></td>
		<td><%=b_date%></td></tr>
		<%
		}
    }catch(SQLException ex){
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
    
  </table> 
</div>
 

<button type="button" class="btn1" onclick="location.href='boardwrite.jsp'">게시글 작성</button>
<link rel="stylesheet" type="text/css" href="css/table.css" />
<%@ include file="category.jsp" %>

</body>
</html>
