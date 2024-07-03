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
		<section class="sec01">
			<%-- <img src="${ctp}/resources/images/mainLogin/test01.jpg" /> --%>
		</section>
		<section class="sec02">
			<form name="myform" method="post">
				<div class="text-center mb-5"><img src="${ctp}/images/memberLogin/logo03.png" class="logo" style="width:300px">회원가입</div>
				<!-- 반려동물 커뮤니티 사이트, 커플 일정 공유 캘린더 --><!-- 커플 일정공유 캘린더, 친구맺어진 사람들끼리만 공유, 한쪽이 수정중이면 다른 한쪽은 수정불가 -->
				<!-- 반려동물이용 시설, 내가 찜한 목록 -->
				<!-- 산책인증 챌린지 -->
			    <div class="form-group">
				    <label for="mid">아이디 <span style="color:#DB4455"><b>*</b></span></label>
				    <div class="input-group mb-1">
					    <input type="text" class="form-control" name="mid" id="mid" placeholder="아이디를 입력하세요." required autofocus/>
					    <div class="input-group-prepend">
					    	<input type="button" value="아이디 중복체크" id="midBtn" class="btn btn-secondary" onclick="idCheck()" />	
					    </div>
					</div>
			    </div>
			    <div class="form-group">
				    <label for="pwd">비밀번호 <span style="color:#DB4455"><b>*</b></span></label>
				    <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요." name="pwd" required />
			    </div>
			    <div class="form-group">
				    <label for="nickName">닉네임 <span style="color:#DB4455"><b>*</b></span></label>
				    <div class="input-group mb-1">
					    <input type="text" class="form-control" id="nickName" placeholder="별명을 입력하세요." name="nickName" required />
					    <div class="input-group-prepend">
					    	<input type="button" id="nickNameBtn" value="닉네임 중복체크" class="btn btn-secondary" onclick="nickCheck()"/>
					    </div>
				    </div>
			    </div>
			    <div class="form-group">
				    <label for="name">성명 <span style="color:#DB4455"><b>*</b></span></label>
				    <input type="text" class="form-control" id="name" placeholder="성명을 입력하세요." name="name" required />
			    </div>
			    
			    <div class="btnSec"><button type="submit" class="btn btn-success mb-2">가입하기</button></div>
		  	</form>
		</section>
	</div>
</body>
</html>