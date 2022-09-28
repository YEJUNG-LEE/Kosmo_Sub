package shopping.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;

public class AdminMainController extends SuperClass{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		String gotopage = "/main_test1/main_admin_test1.jsp";
		super.GotoPage(gotopage);
	}
}
