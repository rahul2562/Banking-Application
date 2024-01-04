<%@page import="dto.Customer"%>
<%@page import="dto.Bank_Account"%>
<%@page import="dao.Bank_Dao"%>
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
		
	}
    #pt{
        height: 500px;
		width: 500px;
		background-color:rgb(154, 180, 247);
		color: rgb(18, 9, 68);
        display:flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: left;
        margin: 60px auto;
        box-shadow: 0 10px 20px -2px rgba(0,0,0,0.7);
        border-radius: 10px;
        padding-left:30px;
    }
    #cust_balance{
    	margin-top: -100px;
    	
    }
    button{
		box-shadow: 0 10px 20px -8px rgba(0,0,0,0.7);
	}
</style>
</head>
<body>
	<div id="pt">
		<h1>Welcome <br> Balance Page</h1>
	
		<% long acno=(long)request.getSession().getAttribute("acno"); 
			Bank_Dao bank_Dao=new Bank_Dao();
			
			Bank_Account bank_Account=bank_Dao.find(acno);
			Customer customer=bank_Account.getCustomer();
		%>
		<div id="cust_balance">
			<h2>Hello<% if(customer.getGender().equals("male")) {%> <span class="text-success">Mr. <%} else { %> Ms. <%} %> <%= customer.getCname()%></span></h2>
			<h2>Your account balance is <span class="text-success">Rs.<%= bank_Account.getAmount() %></span></h2>
			<a href="account_home.html"><button class="btn btn-secondary">Back</button></a>
		</div>
	</div>
</body>
</html>