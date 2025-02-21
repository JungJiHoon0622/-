<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>로그인</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="member/register";
		})
		
		$("#boardgoBtn").on("click", function(){
			location.href="board/list";
		})
		
	})
</script>
<body>
<div>
<div class="jumbotron" style="padding-top: 20px;">
	<form name='homeForm' method="post" action="/member/login">
		<h1> 로그인</h1>
		<c:if test="${member == null}">
			<div class="form-group">
				<label for="userId"></label>
				<input type="text" id="userId" name="userId">
			</div>
			<div class="form-group">
				<label for="userPass"></label>
				<input type="password" id="userPass" name="userPass">
			</div>
			<div class="form-group">
				<button type="submit">로그인</button>
				<button id="registerBtn" type="button">회원가입</button>
				<button id="boardgoBtn" type="button">비로그인</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="boardgoBtn" type="button">게시판 이동</button>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
	</div>
	</div>
	</div>
</body>
</html>