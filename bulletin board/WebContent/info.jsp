<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/category.css" />
<style type="text/css">
div {
   border: 2px;
}
</style>
</head>

<body>
<% 
String master = (String)session.getAttribute("MLoginID");
String student = (String)session.getAttribute("LoginID");
if(master==null && student==null)
{
%>
   <div class="container" >
   <div class="row">
      <div class="col-lg-3">
         <div class="list-group mb-4">
            <a class="list-group-item list-group-item-info text-center font-weight-bold"></a>
               <a class="list-group-item list-group-item-action text-center font-weight-bold">
               <br><br><br><br><button onclick="location.href='login.jsp'"">로그인</button>
               <br><br><br><br><br><br></a>
         </div>
      </div>
<%}
else if(master==null)
{ 
%>
   <div class="container" >
      <div class="row">
         <div class="col-lg-3">
            <div class="list-group mb-4">
               <a class="list-group-item list-group-item-info text-center font-weight-bold">개인 정보</a>
               <a class="list-group-item list-group-item-action text-center font-weight-bold">
               
               학번 : <%= session.getAttribute("StdID") %><br>
               <%= session.getAttribute("Name") %>(<%= session.getAttribute("LoginID") %>)  <br>
               <button onclick="location.href='logout.jsp'">로그아웃</button></a>   
               </a>
            </div>
         </div>
<% 
}
else
{ 
%>
   <div class="container" >
      <div class="row">
         <div class="col-lg-3">
            <div class="list-group mb-4">
               <a class="list-group-item list-group-item-info text-center font-weight-bold">개인 정보</a>
               <a class="list-group-item list-group-item-action text-center font-weight-bold">
               
               
               <%= session.getAttribute("MName") %>(<%= session.getAttribute("LoginID") %>)<br>
               <button onclick="location.href='manageform.jsp'">설정</button>   <br>
               <button onclick="location.href='logout.jsp'">로그아웃</button></a>      
               </a>
            </div>
         </div>
<% 
}
%>
<!-- Page Content -->
   <div class="container">
   <div class="row">

   <div class="col-md-3 col-sm-3">
        <ui class="mainMenu">
            <li class="item" id="account">
          
                <a href="#account" class="btn"><i class="fas fa-user-circle"></i>코드 공유</a>
                <div class="subMenu">
                    <a href="AI.jsp?kind=web">웹/앱</a>
                    <a href="AI.jsp?kind=game">게임</a>
                    <a href="AI.jsp?kind=ai">인공지능</a>
                    <a href="AI.jsp?kind=net">네트워크</a>
                </div>
            </li>
            <li class="item" id="about">
                <a href="#about" class="btn"><i class="fas fa-address-card"></i>게시판</a>
                <div class="subMenu">
                    <a href="AI.jsp?kind=daily">일상 공유</a>
                    <a href="AI.jsp?kind=fun">유머 게시판</a>
                </div>
            </li>
            <li class="item">
                <a href="bignotice.jsp" class="btn"><i class="fas fa-sign-out-alt"></i>공지사항</a>
            </li>
            <li class="item" id="support">
                <a href="#support" class="btn"><i class="fas fa-info"></i>Support</a>
                <div class="subMenu">
                    <a href="AI.jsp?kind=manager">관리자 게시판</a>
                </div>
            </li>
           
        </ui>
    </div></div></div></div></div>

      
         <div class="col-md-3 col-sm-3">
</body>
</html>