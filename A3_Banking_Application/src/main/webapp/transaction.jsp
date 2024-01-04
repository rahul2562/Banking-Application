<%@page import="dto.Bank_Account"%>
<%@page import="java.util.List"%>
<%@page import="dao.Bank_Dao"%>
<%@page import="dto.BankTransaction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction page</title>
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
    .btn{
    	margin-top: 30px;
    }
</style>
</head>
<body>
	<div id="pt">
		<h1>Welcome <br>Transaction Page</h1>
		<%
			long acno=(long)request.getSession().getAttribute("acno");
			Bank_Dao bank_Dao=new Bank_Dao();
			Bank_Account bank_Account=bank_Dao.find(acno);
			List<BankTransaction> list=bank_Account.getList();
		
		%>
		<table border="1" class="table table-secondary table-striped">
			<tr>
				<th>Tid</th>
				<th>Deposit</th>
				<th>Withdraw</th>
				<th>Balance</th>
				<th>Transaction_time</th>
			</tr>
			<% for(BankTransaction bankTransaction : list) { %>
			<tr>
				<td class="text-dark"><%= bankTransaction.getTid() %></td>
				<td class="text-success"><%= bankTransaction.getDeposit() %></td>
				<td class="text-danger"><%= bankTransaction.getWithdraw() %></td>
				<td><%= bankTransaction.getBalance() %></td>
				<td class="text"><%= bankTransaction.getDate_time() %></td>
			</tr>
			<%} %>
		</table>
		<a href="account_home.html"><button class="btn btn-secondary">Back</button></a>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>