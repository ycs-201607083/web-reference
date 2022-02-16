<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="top.jsp" %>


<br><br>


<!DOCTYPE>

<html>
<%@ include file="info.jsp" %>
<head>
<style type="text/css">
.tableA {
	  width:850px; 
	  height:40px;
      border-collapse: collapse;
      border-top: 3px solid #343A40;     
}  
    .tableA th {
    
      color: #343A40;
      background: #D6EEF2;
      text-align: center;
    }
    .tableA th, .tableA td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .tableA th:first-child, .tableA td:first-child {
      border-left: 0;
    }
    .tableA th:last-child, .tableA td:last-child {
      border-right: 0;
    }
    .tableA tr td:first-child{
      text-align: center;
    }
    
.buttonA {
	float:right;
	border: 1.5px solid #343A40;
	width: 150px;
	margin: 10px;
	font-weight: 400;
	color: #343A40;
	padding: 8px 25px;
	cursor: pointer;
	border-radius: 100px;
}
 

.btnA {
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


a, a:hover {

	text-decoration: none;

}
textarea {
	width: 100%;
	border: none;
	resize: none;
}

</style>
<title>레퍼런스 웹/앱팀</title>
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
   <table class="tableA">
   <tr><th>No.</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
   </th>
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
		<td><a href="modify.jsp?id=<%=b_num%>&type=<%=kind%>"><%=b_title%></a></td>
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
<%@ include file="category.jsp" %>
<div style="display: inline-block; margin:  0px; float: right;">

<button type="buttonA" class="btnA" style="float:right;" onclick="location.href='boardwrite.jsp'">게시글 작성</button>
</div>
</body>
</html>