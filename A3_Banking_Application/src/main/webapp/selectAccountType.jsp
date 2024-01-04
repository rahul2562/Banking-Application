<%@page import="dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
	*{
		margin: 0px;
		padding: 0px;
		box-sizing: border-box;
	}
	body{
		background-image: url("https://img.freepik.com/premium-vector/bank-building-bank-financing-money-exchange-financial-services-atm-vector-illustration_36358-2265.jpg");
		background-size: cover;
		background-repeat: no-repeat;
		color: rgb(18, 9, 68);
	}
	h1{
		margin-left: 10%;
	}
	#form-parent{
		height: 500px;
		width: 500px;
		background-color:rgb(154, 180, 247);
		color: rgb(18, 9, 68);
		margin: 60px auto;
		display: flex;
		border-radius: 10px;
		justify-content: space-evenly;
		flex-direction: column;
		align-items: start;
		box-shadow: 0 10px 20px -2px rgba(0,0,0,0.7);
	}
	form{
		height: 200px;
		width: 70%;
		position: relative;
		top: -50px;
		left: 10%;
	}
	b{
		text-transform: capitalize;
	}
	form>div{
		display: flex;
		justify-content: flex-start;
	}
	
	input{
		margin-top: 20px;
	}
	#btn{
		margin-top: 20px;
	}
</style>
</head>
<body>
	<div id="form-parent">
		<h1>Welcome <span><br> Account Creation</span></h1>
		<form action="createbankaccount" class="was-validated">
			<% Customer customer =(Customer) request.getSession().getAttribute("customer"); %>
			<h3 id="name">Hello Dear <b><%= customer.getCname() %></b> </h3>
			<h3>Please select account type*</h3>
			<div class="row g-3 align-items-center">
				<div class="col-auto">
					<input type="radio" name="accounttype" value="savings" class="">
				</div>
				<div class="col-auto">
					<label class="col-form-label">Savings</label>
				</div>
			</div>
			<div class="row g-3 align-items-center">
				<div class="col-auto">
					<input type="radio" name="accounttype" value="current"  class="">
				</div>
				<div class="col-auto">
					<label class="col-form-label">Current </label>
				</div>
			</div>
			<div id="btn">
				<button class="btn btn-primary">Submit</button>
				<button class="btn btn-danger">Reset</button>
			</div>
		</form>
	</div>
</body>
</html>