let index={
	init: function() {
		$("#btn-save").on("click",()=> {
			this.save();
		});
		
		$("#btn-update").on("click",()=> {
			this.update();
		});
		
	},
	
		save: function() {
			let data = {
				username: $("#username").val(),
				password: $("#password").val(),
				email: $("#email").val()
				};
				$.ajax({
					type:"POST",
					url:"/auth/joinProc",
					data:JSON.stringify(data),
					contentType:"application/json; charset=utf-8",
					dataType:"json"
				}).done(function(resp){
					alert("Thank you for joining us!");
					location.href="/";
				}).fail(function(error){
					alert(JSON.stringify(error));
				});
				
		},
		
		update: function() {
			let data = {
				id: $("#id").val(),
				password: $("#password").val(),
				email: $("#email").val()
				};
				$.ajax({
					type:"PUT",
					url:"/user",
					data:JSON.stringify(data),
					contentType:"application/json; charset=utf-8",
					dataType:"json"
				}).done(function(resp){
					alert("Update has been completed!");
					location.href="/";
				}).fail(function(error){
					alert(JSON.stringify(error));
				});
			
		},
	}
		index.init();