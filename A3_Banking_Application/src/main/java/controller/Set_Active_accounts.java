package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Bank_Dao;

@WebServlet("/setactiveaccount")
public class Set_Active_accounts extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String acno=req.getParameter("acno");
		Long acc_no=Long.parseLong(acno);
		
//		Bank_Dao bank_Dao=new Bank_Dao();
//		bank_Dao.find(acc_no);
		
		req.getSession().setAttribute("acno", acc_no);  // here we are going to set account by using session tracking concept
		req.getRequestDispatcher("account_home.html").include(req, resp);
	}
}
