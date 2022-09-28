package shopping.mall.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.mall.cart.ShoppingInfo;
import shopping.mall.dao.MallDao;
import shopping.product.dao.ProductDao;

public class MallListController extends SuperClass {
	MallDao madao = null ; 
	ProductDao pdao = null ;
	
	public MallListController() {
		this.madao = new MallDao() ;
		this.pdao = new ProductDao() ;
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		String gotopage = null;
		if(super.loginfo == null) {
			gotopage = "/member/memberLoginForm.jsp";
		}else {
			String id = super.loginfo.getcId();
			
			List<ShoppingInfo> lists = this.madao.SelectAll(id);
			System.out.println("담은 건수 : " + lists.size());
			
			request.setAttribute("lists", lists);
			// 목록 보기 페이지로 이동합니다.		
			System.out.println(lists);
			gotopage = "/mall/mycartPage1.jsp";
			
		}
		super.GotoPage(gotopage);		
	}
}
