package shopping.mall.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.mall.cart.ShoppingInfo;
import shopping.mall.dao.MallDao;
import shopping.product.bean.Product;
import shopping.product.controller.ProductDetailController;
import shopping.product.dao.ProductDao;

public class MallInsertController extends SuperClass {
	MallDao madao = null ; 
	ShoppingInfo bean = null ;
	ProductDao pdao = null;
	
	
	public MallInsertController() {
		this.madao = new MallDao() ;
		this.bean = new ShoppingInfo() ; 
		this.pdao = new ProductDao();
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String gotopage = "" ;
		Product pbean = null;
		if (super.loginfo == null) {
			gotopage ="/member/memberLoginForm.jsp";
			super.GotoPage(gotopage);
		}else {
			int num = Integer.parseInt(request.getParameter("num")) ; // 상품 번호
			System.out.println("상품번호 : " + num);
			
			pbean = pdao.SelectOne(num);
			System.out.println("Product 객체 : " + pbean);
			int stock = pbean.getStock();
			int qty = Integer.parseInt(request.getParameter("qty")) ; // 주문 수량	


			if (stock < qty) { // 주문 수량이 재고 수량 초과
				String message = "재고 수량이 부족합니다." ;
				super.setErrorMessage(message);
			}else { // 주문 가능
				String id = super.loginfo.getcId();
				madao.InsertOrder(id, pbean, qty);
			}
			new ProductDetailController().doGet(request, response);
		}
	}
}
