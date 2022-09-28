package shopping.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.admin.bean.Admin;
import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.product.bean.Product;
import shopping.product.dao.ProductDao;

public class ProductListController extends SuperClass {
	ProductDao pdao = null;
	Product bean = null;
	
	public ProductListController() {
		this.pdao = new ProductDao();
		this.bean = new Product();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("request.getParameter : " + request.getParameter("whologin"));
		if(Integer.parseInt(request.getParameter("whologin"))== 2) {
			System.out.println("if");
			super.doProcess_admin(request, response);
		}else {
			System.out.println("else");
			super.doProcess(request, response);			
		}		
		
		String category = "Pork";
		System.out.println("category1 : " + category);
		
		List<Product> lists = this.pdao.SelectPok(category);

		System.out.println("상품 갯수 : " + lists.size());
		
		request.setAttribute("lists", lists);
		request.setAttribute("category", category);
		String gotopage = "/product/jeprPokList.jsp";
		super.GotoPage(gotopage);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		System.out.println("category1 : " + request.getParameter("category"));
		
		List<Product> lists = this.pdao.SelectPok(request.getParameter("category"));
		
		System.out.println("category2 : " + request.getParameter("category"));
		System.out.println("상품 갯수 : " + lists.size());
		
		request.setAttribute("lists", lists);
		
		request.setAttribute("category", request.getParameter("category"));
		
		
		String gotopage = "/product/jeprPokList.jsp";
		super.GotoPage(gotopage);
	}

}
