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
				<h3>Board Read - dummer's</h3></div>
			<div class="panel-body">

				<form class="form-horizontal" role="form" action="/boardSucess/update" method="post" >	
					<div class="form-group" id="nid" >
						<label class="control-label col-sm-3" for="nid">Number:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="nid" value="${boarddata.nid}" readonly>
						</div>
					</div>					
					<div class="form-group" id="author"	>
						<label class="control-label col-sm-3" for="author">Author:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control"  name="author" value="${boarddata.author}" readonly>
						</div>
					</div>				
					<div class="form-group" id="subject" >
						<label class="control-label col-sm-3" for="subject">Subject:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="subject" value="${boarddata.subject}" required>
						</div>
					</div>
					<div class="form-group" id="c-date" >
						<label class="control-label col-sm-3" for="c-date">Created datetime:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="c-date" value="${boarddata.c_date}" readonly>
						</div>
					</div>
					<div class="form-group" id="u-date" >
						<label class="control-label col-sm-3" for="u-date">Last updated:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="u-date" value="${boarddata.u_date}" readonly>
						</div>
					</div>
					<div class="form-group" id="r-count" >
						<label class="control-label col-sm-3" for="r-count">Read count:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="r-count" value="${boarddata.r_count}" readonly>
						</div>
					</div>
					<div class="form-group" id="content" >
						<label class="control-label col-sm-3" for="content">Content:</label>
						<div class="col-sm-9">
							<textarea  id="editor1" name="content" rows="10" cols="40">
								${boarddata.content} 
							</textarea>
							<script>
								CKEDITOR.replace("editor1");
								
							</script>
						</div>
					</div>
					<div class="form-group">					
						<div class="col-sm-offset-3 col-sm-3">
							<button id="form-update" type="submit" class="btn btn-success btn-block" >Update</button>
						</div>
						<div class="col-sm-offset-3 col-sm-3">
							<button id="form-delete" type="button" class="btn btn-danger btn-block" onclick="location.href='/boardSucess/delete?nid=${boarddata.nid}'" >Delete</button>
						</div>
						
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button id="form-back" type="button" class="btn btn-primary btn-block" onclick="history.go(-1)();" >Back to list</button>
						</div>
					</div>
				</form>				

			</div>
		</div>		
	</div>

</body>

<script type="text/javascript">
$(document).ready(function() {
	var user = '${UID}';
	var author = '${boarddata.author}';
	
	if (user==author) {
		//alert("글쓴이와 현재 사용자는 일치한다!");
		$("#form-update").prop("disabled", false);
		$("#form-delete").prop("disabled", false);
	} else {
		// alert("글쓴이와 현재 사용자는 일치하지 않는다!");
		$("#form-update").prop("disabled", true);
		$("#form-delete").prop("disabled", true);
	}
});
</script>

	
</html>
