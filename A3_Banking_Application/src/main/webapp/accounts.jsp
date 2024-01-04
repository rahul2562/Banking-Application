<%@page import="dto.Bank_Account"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>select account type</title>
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
        height: 500px;
		width: 500px;
		background-color:rgb(154, 180, 247);
		color: rgb(18, 9, 68);
        display:flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: center;
        margin: 60px auto;
        box-shadow: 0 10px 20px -2px rgba(0,0,0,0.7);
        border-radius: 10px;
    }
    button{
		box-shadow: 0 10px 20px -8px rgba(0,0,0,0.7);
	}
    #btn-container{
        display: flex;
        flex-direction: column;
        align-items: start;
    }
    .btn-success
    {
       width: 200px;
    }

</style>
</head>
<body>
	<div id="pt">
		<h1>Welcome <br> Account page</h1>
		<%List<Bank_Account> list=(List<Bank_Account>)request.getSession().getAttribute("list");
		if(list.isEmpty())
		{%>
			<h1>No Active Account Found</h1>
		<%}
		else{ %>
			<h1>Select Bank Account</h1>
		
			<%for(Bank_Account bank_Account : list){ %>
				<div><a href="setactiveaccount?acno=<%= bank_Account.getAc_no() %>"><button class="btn btn-success"><%= bank_Account.getAc_no() %></button></a>
				</div>			<%} %>
		<%}%>
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>