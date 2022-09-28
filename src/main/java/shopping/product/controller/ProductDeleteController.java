package shopping.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.product.bean.Product;
import shopping.product.dao.ProductDao;

public class ProductDeleteController extends SuperClass {
	ProductDao pdao = null;
	
	public ProductDeleteController() {
		this.pdao = new ProductDao();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		int num = Integer.parseInt(request.getParameter("num"));
		this.pdao.DeleteData(num);
		
		new ProductListController().doGet(request, response);
	}

}
