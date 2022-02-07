<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page = "top.jsp" flush = "false"/>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
 function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.userID.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.userID.focus();
                return false;
            }
            if(!inputForm.userPassword.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.userPassword.focus();
                return false;
            }
        }
//회원가입 버튼 클릭시 회원가입 화면으로 이동
 function goJoinForm() {
     location.href="join.jsp";
 }    
 </script>
</head>
<body>
<div id="login">
<form name="loginInfo" method="post" action="index_log_on.jsp" 
        onsubmit="return checkValue()">
    
    <table style="margin:auto">
    <br> <br> <br> <br>  
        <td id="id" bgcolor="skyblue">아이디</td>
                    <td>
                        <input type="text" name="userID" maxlength="50">  
                    </td>
        <tr>
         <td id="password" bgcolor="skyblue">비밀번호</td>
                    <td>
                        <input type="password" name="userPassword" maxlength="50">
                        <input type="submit" class="btn btn-primary pull-right" value="로그인" /> 
                        <input type="button" value="회원가입" onclick="goJoinForm()" class="btn btn-primary pull-right"/>   
                    </td>
        </tr>
     
    </table>
    
</form>
   <br> <br> <br> 
<% 
    // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
    // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
    String msg=request.getParameter("msg");
    
    if(msg!=null && msg.equals("0")) 
    {
        out.println("<br>");
        out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
    }
    else if(msg!=null && msg.equals("-1"))
    {    
        out.println("<br>");
        out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
    }
%>    
</div> 
</body>
</html>
<jsp:include page = "bottom.jsp" flush = "false"/>