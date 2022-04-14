<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link href="/css/user.css" rel="stylesheet"/>

<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
  
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
 integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
<title>Jane Park.🐠</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark">
		<a class="navbar-brand" href="/"><h3 class="home_name">escribir sobre.</h3></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<c:choose>
				<c:when test="${empty principal}">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link"
							href="#">📜</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/auth/loginForm">LOGIN</a></li>
						<li class="nav-item"><a class="nav-link"
							href="#">🐻</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/auth/joinForm">REGISTER</a></li>
						<li class="nav-item"><a class="nav-link"
							href="#">💛</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link"
							href="#">📜</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/board/saveForm">WRITE</a></li>
						<li class="nav-item"><a class="nav-link"
							href="#">🐻</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/user/updateForm">PROFILE</a></li>
						<li class="nav-item"><a class="nav-link"
							href="#">💛</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/logout">LOGOUT</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</nav>
<br/>