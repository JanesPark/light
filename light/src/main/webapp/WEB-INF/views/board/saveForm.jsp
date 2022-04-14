<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<form>
		<h2 class=write>Write new post.</h2>
		<div class="form-group">
			<label for="title">TITLE</label>
			<input type="text" class="form-control" placeholder="Enter Title" id="title">
		</div><br/>
		<div class="form-group">
			<label for="content">CONTENT</label>
			<textarea class=" form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>
	<button id="btn-save" class="btn-save">SAVE</button>
</div>
<br/>
<script>
	$('.summernote').summernote({
		tabsize: 2,
		height: 300
	});
</script>
<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>
