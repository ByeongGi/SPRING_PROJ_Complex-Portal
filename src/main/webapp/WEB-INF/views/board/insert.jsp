<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Complex Portal Index</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src=<c:url value ='/resources/ckeditor/ckeditor.js'/>></script>
</head>
<body>

<!-- body -->
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3>Board Insert</h3></div>
			<div class="panel-body">

				<form class="form-horizontal" role="form" action="/boardSucess/insert" method="post">
					<div class="form-group" id="author"	>
						<label class="control-label col-sm-3" for="author">Author:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="inputAuthor" name="author" value="${UID}" readonly>
						</div>
					</div>				
					<div class="form-group" id="subject" >
						<label class="control-label col-sm-3" for="subject">Subject:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="inputSubject" name="subject" value="">
						</div>
					</div>
					<div class="form-group" id="content" >
						<label class="control-label col-sm-3" for="content">Content:</label>
						<div class="col-sm-9">
							<textarea class="form-control" id="editor1" name="content" rows="10" cols="40"> 
							</textarea>
							<script>
								CKEDITOR.replace("editor1");
							</script>							
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-3">
							<button id="form-update" type="submit" class="btn btn-success btn-block" >Insert</button>
						</div>
						<div class="col-sm-offset-3 col-sm-3">
							<button id="form-delete" type="button" class="btn btn-danger btn-block" onclick="javascript:goCancel()" >Cancel</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button id="form-back" type="button" class="btn btn-primary btn-block" onclick="location.href='/board/board01'" >Back to list</button>
						</div>
					</div>
				</form>				

			</div>
		</div>		
	</div>

</body>

<script type="text/javascript">
	
	var goInsert = function() {
		//location.href = "/board/board-dummers-update.jsp";
		//document.getElementById("author")
		//var testSubject = document.getElementById("inputSubject").value();
		
		var testAuthor = $("#inputAuthor").val();
		var testSubject = $("#inputSubject").val();
		
		if (testAuthor == null || testAuthor == "") {
			alert("로그인 하셈 !!!");
			return false;
		}
		
		if (testSubject == null || testSubject == "") {
			alert("제목이 필요해 !!!");
			return false;
		}
		
		return true;
	};

	var goCancel = function() {
		var res = confirm("really cancael ??? \nYou will be lost all data !!!");
		if (res == true) {
			history.back();
			//location.href = "/DummersBoard?command=delete&currentpage=${currentpage}&nid=${boarddata.nid}";
		}
	};

	var goBack = function() {
		//history.go(-1);
		//history.back();
		location.href = "/DummersBoard?command=list&currentpage=";
	};
	
</script>
	
</html>
