<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%    
	String memck[] = request.getParameterValues("memck"); //manageform.jsp에서 넘어온 stdid값 배열
	String id = null;
   
    Connection conn = null;
    PreparedStatement pstmt = null;
    StringBuffer sql = new StringBuffer();
    try{
    	int i, rs=-1;
    	String jdbcUrl = "jdbc:mysql://localhost:3306/web_ref_db?useUnicode=yes&characterEncoding=UTF8";
		String dbId = "admin";
		String dbPass = "password";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

			for(i = 0; i < memck.length-1; i++){
				//sql문으로 db에 chk배열의 학번의 승인여부를 'O' 로 업데이트
				id = memck[i];
				sql.append("update member set signcheck = 'O' where id = ?");
				System.out.println(sql);
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, id);
				rs = pstmt.executeUpdate();
				if(rs == 1)
					System.out.println("성공");
				else
					System.out.println("실패");
				conn.commit();
			}
			
			%>
			<script>
				location.href="manageform.jsp";
	    	</script>
			<%
	    }
    	catch(SQLException ex)
    	{
	    	ex.printStackTrace();
	    } 
    	finally {
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException sqle) {}
			if (conn != null)
				try {conn.close();} catch (SQLException sqle) {}
	    }
    %>
</body>
</html>