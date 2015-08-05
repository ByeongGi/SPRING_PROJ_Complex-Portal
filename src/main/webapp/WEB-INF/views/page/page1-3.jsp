<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src=<c:url value ='/resources/ckeditor/ckeditor.js'/>></script>
</head>
<body>
	<h1>page 1-3 입니다.</h1>
	<h2>이 페이지는 CK에디터</h2>
	<form>
		<textarea name="editor1" id="editor1" rows="10" cols="40">
			페이지에 입력해주세요! ^^ 
		</textarea>
		<script>
			CKEDITOR.replace('editor1');
		</script>
	</form>
</body>
</html>