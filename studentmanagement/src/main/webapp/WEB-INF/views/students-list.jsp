<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<title>All Books</title>
</head>
<body>
	<div class="container">
		<h1>Welcome to the Debate</h1>
	</div>
	<hr/>
	<div class="container">
		<h2>All Books</h2>
	</div>
	<hr/>
	<div class="container">
		<a href="registerStudent"><button class="btn btn-primary">Register New Student</button></a>
	</div>
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>S.no</th>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${students}" varStatus="c">
					<tr>
						<td>${c.count}</td>
						<td>${student.name}</td>
						<td>${student.department}</td>
						<td>${student.country}</td>
						<td>
							<a href="updateStudent/${student.id}">
								<button class="btn btn-primary">
									Update
								</button>
							</a>
							<a href="deleteStudent/${student.id}">
								<button class="btn btn-danger" onClick="if (!(confirm('Are you sure you want to delete?'))) return false">
									Delete
								</button>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>