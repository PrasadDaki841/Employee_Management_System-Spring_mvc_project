<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Employee</title>
</head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
#div1 {
	display: grid;
	justify-content: center;
	align-items: center;
	margin-top: 20px
}

form {
	border: 2px solid black;
	padding: 50px 30px 50px 30px;
	border-radius: 10px;
	width: 700px;
}

button {
	color:white;
	width: 100%;
	background: rgb(63, 94, 251);
	background: radial-gradient(circle, rgba(63, 94, 251, 1) 0%,
		rgba(70, 252, 167, 1) 36%, rgba(125, 70, 252, 1) 52%);
}

#heading {
	text-align: center;
	color: white;
}

body {
	background: rgb(63, 94, 251);
	background: radial-gradient(circle, rgba(63, 94, 251, 1) 0%,
		rgba(70, 252, 167, 1) 36%, rgba(125, 70, 252, 1) 52%);
}

.form-label {
	color: white;
}
nav{
	
	position: fixed;
	
}
</style>

</head>
<body>
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
						aria-current="page" href="addemployee">Add Employee</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div id="div1">
		<form action="creatEmp" method="post">
			<h1 id="heading">Register Employee</h1>
			<c:if test="${not empty msg }">
				<h4>${ msg}</h4>
				<c:remove var="msg"/>
			</c:if>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					FullName </label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					name="fullname">

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Address</label> <input type="text" class="form-control"
					id="exampleInputPassword1" name="address">
			</div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Email</label> <input type="email" class="form-control"
					id="exampleInputPassword1" name="email">
			</div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Password</label> <input type="password" class="form-control"
					id="exampleInputPassword1" name="password">
			</div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Designation</label> <input type="text" class="form-control"
					id="exampleInputPassword1" name="designation">
			</div>

			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Salary</label> <input type="number" class="form-control"
					id="exampleInputPassword1" name="salary">
			</div>
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1"
					name="check"> <label class="form-check-label"
					for="exampleCheck1">Accept terms and Condition</label>
			</div>
			<button type="submit">Submit</button>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>