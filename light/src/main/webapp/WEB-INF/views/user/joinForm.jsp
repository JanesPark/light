<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container-register">
	<h2 class=register>REGISTER.</h2>
	<form>
	   <div class="form-group">
	    <label for="username" class="form-label">NAME</label>
	    <input type="text" class="form-control" id="username">
	  </div>
	  <div class="form-group">
	    <label for="email" class="form-label">EMAIL</label>
	    <input type="email" class="form-control" id="email">
	  </div>
	  <div class="form-group">
	    <label for="password" class="form-label">PASSWORD</label>
	    <input type="password" class="form-control" id="password">
	  </div>
	</form>
	<div class="btn-big register">
	<button id="btn-save" class="btn-register">REGISTER</button>
	</div>
</div>
<br/>
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>