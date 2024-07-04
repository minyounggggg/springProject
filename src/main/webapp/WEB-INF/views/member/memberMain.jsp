<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>memberJoin.jsp</title>
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
<script>
	'use strict';
	
	function idCheck() {
		let mid = $("#mid").val();
		if(mid.trim() == ""){
			alert("아이디를 입력해주세요.");
			$("#mid").focus();
			return false;
		}
		
	}
</script>
</head>
<body>
	<div class="loginForm">
		<h4>로그인메인</h4>
	</div>
</body>
</html>