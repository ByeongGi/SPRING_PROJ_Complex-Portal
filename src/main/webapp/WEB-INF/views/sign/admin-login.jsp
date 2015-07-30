<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- body -->
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading"><h3>Admin Mode - (Log-in Form)</h3></div>
			<div class="panel-body">
				<form class="form-horizontal" role="form" action="<c:url value ="j_spring_security_check" />" method="post">
					<div class="form-group" id="id"	>
					<input type="hidden" name="command" value="smarts">
						<label class="control-label col-sm-3" for="id">ID:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id = "userid" name="userid" placeholder="Enter id">
							
						</div>
					</div>
					<div class="form-group" id="password" >
						<label class="control-label col-sm-3" for="password">Password:</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id = "ueerpassword" name="ueerpassword" placeholder="Enter password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<div class="checkbox">
								<label><input type="checkbox"> Remember me</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-primary btn-block">log in</button>
						</div>
					</div>
				</form>			
			</div>
		</div>		
	</div>
</body>
</html>