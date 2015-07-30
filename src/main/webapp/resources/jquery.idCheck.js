/**
 * 
 */




function id_Check() {
	var id_Check_val = $("#id_Check_input").val();
	
	$.ajax({
		type : "POST",
		url : "/idCheck",
		data : "ID=" + id_Check_val,
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(resultData) {
			var ret = resultData.check;
			if (ret=="1") {
				alert("아이디가 중복됨");
				
			} else if(ret=="0"){
				alert("아이디가 써도됨");
				$("#id").val(id_Check_val);
			}
			
		}

	});

};




// Id 중복 체크 model controller
$(document).ready(function() {
	$("#id_Check_Btn").click(function() {
		$("#id_Check_Modal").modal();
	});
});