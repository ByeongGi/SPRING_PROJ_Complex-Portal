<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<div class="panel-heading"><h3>USER Mode - (Log-in Form)</h3></div>
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

<!-- <script type="text/javascript">

$(document).ready(function(){
	
	//var error = ;

	if (error == "0") { 
		$("#id-icon-remove").hide();
		$("#id-icon-ok").hide();
		$("#id-message").hide();
		
		$("#password-icon-remove").hide();
		$("#password-icon-ok").hide();
		$("#password-message").hide();
		
	} else if (error == "1") { 
		$("#id").addClass("has-error has-feedback");
		$("#id-icon-remove").show();
		$("#id-icon-ok").hide();
		$("#id-message").text("Input your *ID correctly.");
		
		$("#password").addClass("has-error has-feedback");
		$("#password-icon-remove").show();
		$("#password-icon-ok").hide();
		$("#password-message").text("Input your *password correctly.");
		
		alert("존재하지 않는 아이디입니다.");
		
	} else if (error == "2") {
		$("#id").addClass("has-success has-feedback");
		$("#id-icon-remove").hide();
		$("#id-icon-ok").show();
		$("#id-message").hide();
		
		$("#password").addClass("has-error has-feedback");
		$("#password-icon-remove").show();
		$("#password-icon-ok").hide();
		$("#password-message").text("Input your *password correctly.");
		
		alert("비밀번호가 일치하지 않습니다.");
		
	} else if (error == "3"){
		$("#id").addClass("has-success has-feedback");
		$("#id-icon-remove").hide();
		$("#id-icon-ok").show();
		$("#id-message").hide();
		
		$("#password").addClass("has-success has-feedback");
		$("#password-icon-remove").hide();
		$("#password-icon-ok").show();
		$("#password-message").hide();
		
		var $test = confirm("다른 위치에서 이미 로그인 되어있는 아이디입니다.\n기존 접속을 해제하고 다시 로그인 하시겠습니까 ?");
		if ($test == true) {
			alert("true");
		}
	
	}
});

</script> -->

</body>
</html>
