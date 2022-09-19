<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Register New Student</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Register New Student</h2>
	</div>
	<hr/>
	<div class="container">
	<c:choose>
		<c:when test="${student.name == null}">
			<form action="saveStudent" method="post">
				<div class="form-group">
					<input class="form-control" type="hidden" name="id" value="${student.id}">
				</div>
				<div class="form-group">
					<label>Name: </label><input class="form-control" type="text" name="name" value="${student.name}">
				</div>
				<div class="form-group">
					<label>Department: </label><input class="form-control" type="text" name="department" value="${student.department}">
				</div>
				<div class="form-group">
					<label>Country: </label><input class="form-control" type="text" name="country" value="${student.country}">
				</div>
				<button class="btn btn-default" type="submit">Submit</button>
			</form>
		</c:when>
		<c:otherwise>
			<form 	action="../saveStudent" method="post">
				<div class="form-group">
					<input class="form-control" type="hidden" name="id" value="${student.id}">
				</div>
				<div class="form-group">
					<label>Name: </label><input class="form-control" type="text" name="name" value="${student.name}">
				</div>
				<div class="form-group">
					<label>Department: </label><input class="form-control" type="text" name="department" value="${student.department}">
				</div>
				<div class="form-group">
					<label>Country: </label><input class="form-control" type="text" name="country" value="${student.country}">
				</div>
				<button class="btn btn-success" type="submit">Submit</button>
			</form>
		</c:otherwise>
	</c:choose> 
	</div>
</body>
</html>