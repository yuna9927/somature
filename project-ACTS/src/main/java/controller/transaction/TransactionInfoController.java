package controller.transaction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.Transaction;
import model.service.TransactionManager;

public class TransactionInfoController implements Controller {
	private static final Logger log = LoggerFactory.getLogger(CreateTransactionController.class);
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		TransactionManager transManager = TransactionManager.getInstance();
		Transaction transaction = transManager.findTransaction(Integer.parseInt(request.getParameter("transId")));

    	request.setAttribute("transaction", transaction);

		return "/user/transactionInfo.jsp";
	}

}