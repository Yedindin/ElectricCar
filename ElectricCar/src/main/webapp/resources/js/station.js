
function findSigoongoo_id() {	
	var special_do_id = $('#findSigoongoo_id').html();

		$.ajax({
			url : "/charger",
			type : "POST",
			async : false,
			data : {
				special_do_id : special_do_id,
			},
			success : function(data) {
				alert("${special_do_id}");
			},
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n"
						+ "message:" + request.responseText + "\n"
						+ "error:" + error);
			}
		});
}





