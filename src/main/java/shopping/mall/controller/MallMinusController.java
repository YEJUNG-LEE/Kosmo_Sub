package shopping.mall.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.mall.dao.MallDao;

public class MallMinusController extends SuperClass {
	MallDao madao = null ; 
	
	public MallMinusController() {
		this.madao = new MallDao() ;
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		// 해당 상품 번호에 대하여 수량(qty)로 개수를 변경합니다. 
		int mid = Integer.parseInt(request.getParameter("mid")) ;
		this.madao.MinusOrder(mid);
		
		new MallListController().doGet(request, response);
	}
}