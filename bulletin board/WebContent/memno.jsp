<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
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