<%@page import="dto.Bank_Account"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
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
		
	}
    #pt{
		background-color:rgb(154, 180, 247);
		color: rgb(18, 9, 68);
        display:flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: left;
        margin: 60px auto;
        box-shadow: 0 10px 20px -2px rgba(0,0,0,0.7);
        padding-left: 30px;
    }
    .table{
    	width: 80%;
    }
    .btn-secondary{
    	margin-top: 30px;
    }
</style>
</head>
<body>
	<div id="pt">
		<h1>Welcome <br>Admin home page</h1>
		<% List<Bank_Account> list=(List<Bank_Account>)request.getSession().getAttribute("list"); %>
		<table border="1" class="table table-secondary table-striped">
			<tr>
				<th>Account Number</th>
				<th>Account Type</th>
				<th>Customer Name</th>
				<th>Customer Id</th>
				<th>Account Status</th>
				<th>Change Status</th>
			</tr>
			<% for(Bank_Account bank_Account : list)  {%>
			<tr>
				<td><%=bank_Account.getAc_no() %></td>
				<td><%=bank_Account.getAcc_type() %></td>
				<td><%=bank_Account.getCustomer().getCname() %></td>
				<td><%=bank_Account.getCustomer().getCid() %></td>
				<td><%=bank_Account.isStatus() %></td>
				<td><a href="changestatus?acno=<%= bank_Account.getAc_no() %>"><button class="btn btn-danger">Change status</button></a></td>
			</tr>
			<%} %>
		</table>
		<a href="customerLogin.html"><button class="btn btn-secondary">Back</button></a>
	</div>
</body>
</html>