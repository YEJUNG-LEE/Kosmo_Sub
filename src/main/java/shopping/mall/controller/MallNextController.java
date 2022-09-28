package shopping.mall.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.mall.cart.ShoppingInfo;
import shopping.mall.dao.MallDao;
import shopping.product.bean.Product;
import shopping.product.dao.ProductDao;

public class MallNextController extends SuperClass {
	MallDao madao = null ; 
	ProductDao pdao = null ;
	
	public MallNextController() {
		this.madao = new MallDao() ;
		this.pdao = new ProductDao() ;
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		System.out.println("다음 페이지로 넘어갑니다.");
		String gotopage = "/mall/Joo1.jsp";
		super.GotoPage(gotopage);		
	}
}
