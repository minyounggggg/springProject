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
		<form name="myform" method="post">
			<section class="sec01">
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
			    <div class="form-group">
			      <label for="email1">Email address <span style="color:#DB4455"><b>*</b></span></label>
			        <div class="input-group mb-3">
			          <input type="text" class="form-control" placeholder="Email을 입력하세요." id="email1" name="email1" required />
			          <div class="input-group-append">
			            <select name="email2" class="custom-select">
			              <option value="@naver.com" selected>@naver.com</option>
			              <option value="@hanmail.net">@hanmail.net</option>
			              <option value="@hotmail.com">@hotmail.com</option>
			              <option value="@gmail.com">@gmail.com</option>
			              <option value="@nate.com">@nate.com</option>
			              <option value="@yahoo.com">@yahoo.com</option>
			            </select>
			          </div>
			        </div>
			    </div>
			    <div class="form-group">
			      <div class="form-check-inline">
			        <span class="input-group-text">성별 :</span> &nbsp; &nbsp;
			        <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="gender" value="남자" checked>남자
			        </label>
			      </div>
			      <div class="form-check-inline">
			        <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="gender" value="여자">여자
			        </label>
			      </div>
			    </div>
			    <div class="form-group">
			      <label for="birthday">생일</label>
			      <input type="date" name="birthday" value="<%=java.time.LocalDate.now() %>" class="form-control"/>
			    </div>
			    <div class="form-group">
			      <div class="input-group mb-3">
			        <div class="input-group-prepend">
			          <span class="input-group-text">전화번호 :</span> &nbsp;&nbsp;
			          <!-- 
			            <select name="tel1" class="custom-select">
			              <option value="010" selected>010</option>
			              <option value="02">02</option>
			              <option value="031">"031"</option>
			              <option value="032">032</option>
			              <option value="041">041</option>
			              <option value="042">042</option>
			              <option value="043">043</option>
			              <option value="051">051</option>
			              <option value="052">052</option>
			              <option value="061">061</option>
			              <option value="062">062</option>
			            </select>-
			             -->
			        </div>
			        <input type="text" name="tel1" size=3 maxlength=3 class="form-control" required/>-
			        <input type="text" name="tel2" size=4 maxlength=4 class="form-control" required/>-
			        <input type="text" name="tel3" size=4 maxlength=4 class="form-control" required/>
			      </div>
			    </div>
			    <div class="form-group">
			      <label for="address">주소 <span style="color:#DB4455"><b>*</b></span></label>
			      <div class="input-group mb-1">
			        <input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호" class="form-control" required>
			        <div class="input-group-append">
			          <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-secondary">
			        </div>
			      </div>
			      <input type="text" name="roadAddress" id="sample6_address" size="50" placeholder="주소" class="form-control mb-1" required>
			      <div class="input-group mb-1">
			        <input type="text" name="detailAddress" id="sample6_detailAddress" placeholder="상세주소" class="form-control"> &nbsp;&nbsp;
			        <div class="input-group-append">
			          <input type="text" name="extraAddress" id="sample6_extraAddress" placeholder="참고항목" class="form-control">
			        </div>
			      </div>
			    </div>
			</section>
			<section class="sec02">
				<div  class="form-group">
				    프로필 사진 (귀여운 내 짝꿍을 자랑해보세요!)(파일용량:2MByte이내) :
				    <input type="file" name="fName" id="file" onchange="imgCheck(this)" class="form-control-file border mb-3"/>
				    <img id="demoImg" width="200px"/>
				    <hr/>
			    </div>
			    <div class="form-group">
				    <label for="name">반려동물 이름 <span style="color:#DB4455"><b>*</b></span></label>
				    <input type="text" class="form-control" id="name" placeholder="반려동물의 이름을 입력해주세요." name="petName" required />
			    </div>
			    <div class="form-group">
				    <label for="birthday">반려동물 생일</label>
				    <input type="date" name="petBirthday" value="<%=java.time.LocalDate.now() %>" class="form-control"/>
			    </div>
			    <!-- 특이사항 적을지 말지? -->
			    <hr/>
			    <div class="btnSec"><button type="submit" class="btn btn-success mb-2">가입하기</button></div>
			</section>
	  	</form>
	</div>
</body>
</html>