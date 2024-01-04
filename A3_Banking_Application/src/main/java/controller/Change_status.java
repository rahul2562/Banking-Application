package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Bank_Dao;
import dto.Bank_Account;

@WebServlet("/changestatus")
public class Change_status  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String acno=req.getParameter("acno");
		long accc_no=Long.parseLong(acno);
		
		Bank_Dao bank_Dao=new Bank_Dao();
		Bank_Account bank_account=bank_Dao.fetch_account_details(accc_no);
		
		if(bank_account.isStatus())
		{
			bank_account.setStatus(false);
		}
		else {
			bank_account.setStatus(true);
		}
		
		bank_Dao.update_the_details(bank_account);
		resp.getWriter().print("<h1 style='color: white;'>Status got updated</h1>");
		
		//here i am going to take the updated information from bank account table
		List<Bank_Account> list=bank_Dao.fetchAll();
		//session tracking
		req.getSession().setAttribute("list", list);
		req.getRequestDispatcher("adminhome.jsp").include(req, resp);
		
	}
}
