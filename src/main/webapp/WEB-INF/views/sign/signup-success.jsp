<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>


<!-- body -->
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3>Sign Success </h3>
			</div>
			<div class="panel-body">
			<h1>회원가입에 성공했습니다!</h1>
			<p><span>${UserInfo.name}</span>님의 회원님의 아이디는 <span> ${UserInfo.id} </span> </p>
			<p> 비밀번호는 <span> 	${UserInfo.password} </span> </p>						
			</div>
		</div>		
	</div>

</body>
</html>
