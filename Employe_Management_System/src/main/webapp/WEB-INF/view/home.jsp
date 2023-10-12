<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Data</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style type="text/css">
h2 {
	text-align: center;
}

#tablediv {
	display: flex;
	justify-content: center;
	align-items: center;
}

body {
	background: rgb(131, 58, 180);
	background: linear-gradient(84deg, rgba(131, 58, 180, 1) 0%,
		rgba(38, 200, 177, 1) 50%, rgba(252, 176, 69, 1) 100%);
}
#navdiv{
	
}
</style>
</head>
<body>

	<div id=navdiv>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Employee Managment System</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="home">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="addemployee">Add Employee</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</div>
	<h2>All Employee Details</h2>

	<div id="tablediv">
		<table class="table table-striped">
			<thead>

				<tr>
					<th scope="col">ID</th>
					<th scope="col">Full NAME</th>
					<th scope="col">ADDRESS</th>
					<th scope="col">EMAIL</th>
					<th scope="col">PASSWORD</th>
					<th scope="col">DESIGNATION</th>
					<th scope="col">SALARY</th>
					<th scope="col">ACTION</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${emplist}" var="emp">
					<tr>
						<th scope="row">${emp.id }</th>
						<td>${emp.fullname }</td>
						<td>${emp.address }</td>
						<td>${emp.email }</td>
						<td>${emp.password }</td>
						<td>${emp.designation }</td>
						<td>${emp.salary }</td>
						<td><a href="edit_emp/${emp.id }">
								<button class="btn-primary">Edit</button>
						</a> <a href="deleteEmp/${emp.id }">
								<button class="btn-danger">Delete</button>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>