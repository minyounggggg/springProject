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
		background-color : #fff;
	}
	.inner{
		width : 1300px;
		margin : 0 auto;
	}
	.header{
		background-color : #999;
		height : 300px;
		width : 100%;
	}
	.secStyle{
		background-color : #eee;
		border-radius : 30px;
		box-shadow : 8px 15px 10px rgba(0, 0, 50, 0.1);
		margin : 10px;
	}
	.sec1{
		display : flex;
	}
	.sec01{
		float : left;
		width : 50%;
		height: 300px;
	}
	.sec02{
		float : left;
		width : 50%;
		height: 300px;
	}
	.sec03{
		clear : both;
		height: 500px;
	}
</style>
<script>
	'use strict';
	
	
	
</script>
</head>
<body>
<!-- 
	<header>
		<div>
			header
		</div>
	</header>
	 -->
	<div class="inner">
		<div class="header">
			header
		</div>
		<div class="sec1">
			<section class="secStyle sec01">
				<p>sec01</p>
			</section>
			<section class="secStyle sec02">
				<p>sec02</p>
			</section>
		</div>
		<section class="secStyle sec03">
			<p>sec03</p>
		</section>
	</div>
</body>
</html>