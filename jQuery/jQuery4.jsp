<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="./js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('h1').css('color', 'blue');
		$('input[type^="te"]').css('background-color', 'red');
		$('input:password').css('background-color', 'green');
	});
	
</script>
</head>
<body>
<h1>로그인</h1>
<input type="text" /><br />
<input type="password" /><br />

</body>
</html>