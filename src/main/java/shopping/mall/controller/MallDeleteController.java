package shopping.mall.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.mall.dao.MallDao;

public class MallDeleteController extends SuperClass {
	MallDao madao = null ; 
	
	public MallDeleteController() {
		this.madao = new MallDao() ;
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		// 삭제하고자하는 장바구니 번호에 대하여 DB(shoppingInfo)에 있는 장바구니 db를 삭제합니다. 
		int pnum = Integer.parseInt(request.getParameter("mid"));
		this.madao.DeleteOrder(pnum);
		
		new MallListController().doGet(request, response);
	}
}