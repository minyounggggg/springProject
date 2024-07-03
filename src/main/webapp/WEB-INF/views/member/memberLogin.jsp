<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>memberLogin.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
<style>
	body{
		display : flex;
		justify-content: center;
		align-items: center;
		/* height: 100vh; */
		background-color : #eee;
		padding-top : 150px;
	}
	.loginForm{
		display : flex;
		width : 1300px;
		border-radius : 30px;
		box-shadow : 8px 15px 10px rgba(0, 0, 50, 0.1);
	}
	.sec01{
		/* background-image : url("${ctp}/resources/images/mainLogin/testBG.jpg"); */
		background-color : #999999;
		float : left;
		width : 50%;
		height: 500px;
		border-radius : 30px 0 0 30px;
	}
	.sec02{
		/* background : url("${ctp}/resources/images/mainLogin/testBG.jpg"); */
		background-color : #f9f9f9;
		float : left;
		width : 50%;
		height: 500px;
		border-radius : 0 30px 30px 0;
		padding : 30px;
	}
</style>
</head>
<body>
	<div class="loginForm">
		<section class="sec01">
			<%-- <img src="${ctp}/resources/images/mainLogin/test01.jpg" /> --%>
		</section>
		<section class="sec02">
			<form name="myform" method="post">
				<div class="text-center mb-5"><img src="${ctp}/images/memberLogin/logo03.png" class="logo" style="width:300px">로그인</div>
		    	<input type="text" name="mid" placeholder="User ID" autofocus required class="form-control mb-1" style="height:45px"/>
		       	<input type="checkbox" name="idSave" checked class="mb-3 ml-2"/> 아이디 저장
			    <input type="password" name="pwd" placeholder="Password" required class="form-control mb-4" style="height:45px"/>
			    <div class="btnSec"><button type="submit" class="btn btn-success mb-2">로그인</button></div>
				<div class="btnSec"><button type="button" onclick="location.href='${ctp}/memberJoin';" class="btn btn-success">회원가입</button></div>
		  	</form>
		</section>
	</div>
</body>
</html>