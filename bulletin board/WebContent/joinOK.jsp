<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title> Insert title here </title>
</head>
<body>
<<<<<<< HEAD

<%
String stdid = request.getParameter("stdID");			// 학번
String name = request.getParameter("name");				// 이름
String subcheck = "X";
String id = request.getParameter("userID");				// ID
String passwd = request.getParameter("userPassword");	// PW
String email = request.getParameter("userEmail");		// EMAIL
%>
<%
Timestamp register = new Timestamp(System.currentTimeMillis());	// 가입날짜 안쓸거같긴함
String prnM=null;

Connection conn=null;
PreparedStatement pstmt = null;
String str = "";

try{
    String jdbcUrl="jdbc:mysql://localhost:3306/web_ref_db?useUnicode=yes&characterEncoding=UTF8";
    String dbId="admin";
    String dbPass="password";
    Class.forName("com.mysql.jdbc.Driver");

    conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    String sql = "insert into member values(?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, stdid);
    pstmt.setString(2, name);
    pstmt.setString(3, subcheck);
    pstmt.setString(4, id);
    pstmt.setString(5, passwd);
    pstmt.setString(6, email);
    pstmt.setString(7, register)
    pstmt.executeUpdate();
%>
	<script>
		alert("회원가입이 완료되었습니다!!");
		location.href="index.jsp";
	</script>
<%
}catch(SQLException e){
%>
    <script>
    	alert("이미 회원이 있습니다!");
    	history.go(-1);
    </script>
<%
}finally{
    if(pstmt !=null)
        try{pstmt.close();}catch(SQLException sqle){}

    if(conn !=null)
        try{conn.close();}catch(SQLException sqle){}
}
%>
=======
<jsp:include page = "top2.jsp" flush = "false"/>
<jsp:include page = "info.jsp" flush = "false"/>
<jsp:include page = "category.jsp" flush = "false"/>
<jsp:include page = "notice.jsp" flush = "false"/>
<jsp:include page = "newpost.jsp" flush = "false"/>	
>>>>>>> branch 'main' of http://github.com/ycs-201607083/web-reference
</body>
</html>