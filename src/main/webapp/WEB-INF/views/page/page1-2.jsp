<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>page 1-2 입니다.</h1>
<h2> 파일 업로드 시험 </h2>
	<form action="/upload" enctype="multipart/form-data" method="POST">
	<input type="file"  name="file"> 
	<input type="submit">
	</form>
</body>
</html>