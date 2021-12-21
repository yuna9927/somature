package controller.transaction;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.Post;
import model.Transaction;
import model.User;
import model.dao.UserDAO;
import model.service.TransactionManager;
import model.service.UserManager;

public class MyBuyerTransactionListController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {			
		
		int userId = Integer.parseInt(request.getParameter("userId"));
		System.out.println("userID" + userId);
		TransactionManager transactionMan =  TransactionManager.getInstance();
		List<Transaction> transactionList;
	
		transactionList = transactionMan.findMyTransactionList(userId);
		
    	
		request.setAttribute("userId", userId);
    	request.setAttribute("transactionList", transactionList);			
		return "/user/myBuyerTransaction.jsp";
    }
}
