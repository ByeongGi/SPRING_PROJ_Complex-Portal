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
				<h3>Board Read - dummer's</h3></div>
			<div class="panel-body">

				<form class="form-horizontal" role="form" action="" method="post">
					<input type="hidden" name="currentpage" value="">
					<div class="form-group" id="nid"	>
						<label class="control-label col-sm-3" for="nid">Number:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="nid" value="${boarddata.nid}" readonly>
						</div>
					</div>					
					<div class="form-group" id="author"	>
						<label class="control-label col-sm-3" for="author">Author:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="author" value="${boarddata.author}" readonly>
						</div>
					</div>				
					<div class="form-group" id="subject" >
						<label class="control-label col-sm-3" for="subject">Subject:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="subject" value="${boarddata.subject}" readonly>
						</div>
					</div>
					<div class="form-group" id="c-date" >
						<label class="control-label col-sm-3" for="c_date">Created datetime:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="c-date" value="${boarddata.c_date}" readonly>
						</div>
					</div>
					<div class="form-group" id="u-date" >
						<label class="control-label col-sm-3" for="u-date">Last updated:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="u_date" value="${boarddata.u_date}" readonly>
						</div>
					</div>
					<div class="form-group" id="r-count" >
						<label class="control-label col-sm-3" for="r-count">Read count:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="r_count" value="${boarddata.r_count}" readonly>
						</div>
					</div>
					<div class="form-group" id="content" >
						<label class="control-label col-sm-3" for="content">Content:</label>
						<div class="col-sm-9">
							<textarea class="form-control" rows="5" name="content" id="content" readonly>${boarddata.content}</textarea>							
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-3">
							<button id="form-update" type="button" class="btn btn-success btn-block" onclick="location.href='/boardService/update/${boarddata.nid}'">Update</button>
						</div>
						<div class="col-sm-offset-3 col-sm-3">
							<button id="form-delete" type="button" class="btn btn-danger btn-block" onclick="location.href='/boardService/delete/${boarddata.nid}'" >Delete</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button id="form-back" type="button" class="btn btn-primary btn-block" onclick="history.go(-1)()" >Back to list</button>
						</div>
					</div>
				</form>				

			</div>
		</div>		
	</div>

</body>
</html>
