<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    
    list-style: none;
    text-decoration: none;
}
.wrapper{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
.mainMenu{
    width: 258px;
    display: block;
    border-radius: 10px;
    overflow: hidden;
}
.item{
    border-top: 1px solid #b6e2e9;
    overflow: hidden;
}
.btn{
    display: block;
    padding: 15px 20px;
    background-color: #b6e2e9;
    color: #fff;
    position: relative;

}
.btn:before{
    content: '';
    position: absolute;
    width: 0;
    height: 0;
    border-left: 8px solid transparent;
    border-right:8px solid transparent;
    border-top:10px solid #b6e2e9;
    right: 15px;
    bottom: -10px;
    z-index: 9;
    
}
.btn i {
    margin-right: 10px;
}
.subMenu{
    background: #273057;
    overflow: hidden;
    transition: max-height 0.7s;
    max-height: 0;
}
.subMenu a{
    display: block;
    padding: 10px 20px;
    color: #fff;
    font-size: 14px;
    border-bottom: 1px solid #394c7f;
    position: relative;
    
}
.subMenu a:before{
    content: '';
    opacity: 0;
    transition: opacity 0.3s;

}

.subMenu a:after{
    content: '';
    opacity: 0;
    transition: opacity 0.3s;

}

.subMenu a:hover{
    background: #273057;
    background: -moz-linear-gradient(top, #273057 0%, #273057 50%, #394c7f 51%, #394c7f 100%);
    background: -webkit-linear-gradient(top, #273057 0%,#273057 50%,#394c7f 51%,#394c7f 100%);
    background: linear-gradient(to bottom, #273057 0%,#273057 50%,#394c7f 51%,#394c7f 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#273057', endColorstr='#394c7f',GradientType=0 );
    transition: all 0.3s;
    border-bottom: 1px solid #394c7f;
}
.subMenu a:last-child{
    border:none;
}
.item:target .subMenu{
    max-height: 10em;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Page Content -->
	<div class="container">
	<div class="row">

	<div class="col-lg-3">
	
        <ui class="mainMenu">
            <li class="item">
                <a href="bignotice.jsp" class="btn"><i class="fas fa-sign-out-alt"></i>공지사항</a>
            </li>
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
                <a href="AI.jsp?kind=dailyt" class="btn"><i class="fas fa-address-card"></i>일상 공유</a>
            </li>
			<li class="item" id="about">
                <a href="AI.jsp?kind=fun" class="btn"><i class="fas fa-address-card"></i>유머 게시판</a>
            </li>
           
        </ui>
    </div>

		
			<div class="col-lg-9 my-4 mb-4">

</body>
</html>