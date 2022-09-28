package shopping.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.product.bean.Product;
import shopping.product.dao.ProductDao;

public class TemplateController extends SuperClass {
	ProductDao pdao = null;
	Product bean = null;
	
	public TemplateController() {
		this.pdao = new ProductDao();
		this.bean = new Product();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String id = request.getParameter("id");
		int salary = Integer.parseInt(request.getParameter("salary"));
		
		request.setAttribute("ddd", null);
		super.session.setAttribute("ddd", null);
		
		// 로그인 성공(이라고 가정할 때)
		String gotopage = "/product/meList.jsp";
		super.GotoPage(gotopage);
	}

}
