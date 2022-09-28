package shopping.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import shopping.common.controller.MainController;
import shopping.common.controller.SuperClass;
import shopping.product.bean.Product;
import shopping.product.dao.ProductDao;

public class ProductInsertController extends SuperClass {
	ProductDao pdao = null;
	Product bean = null;
	
	public ProductInsertController() {
		this.pdao = new ProductDao();
		this.bean = new Product();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		String gotopage = "/product/jeprInsertForm.jsp";
		super.GotoPage(gotopage);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		//이미지 업로드인 경우에는 FrontController에서 MultipartRequest 객체 mr가 request에 바인딩됩니다.
		//mr 객체를 dopost() 메소드에서 파라미터를 처리해주면 됩니다.
		MultipartRequest mr = (MultipartRequest)request.getAttribute("mr");
		
		//파라미터를 챙깁니다.
		String name = mr.getParameter("name");
		int stock = Integer.parseInt(mr.getParameter("stock"));
		int price = Integer.parseInt(mr.getParameter("price"));
		int gram = Integer.parseInt(mr.getParameter("gram"));
		String category = mr.getParameter("category");
		int point = Integer.parseInt(mr.getParameter("point"));
		String inputdate = mr.getParameter("inputdate");
		
		//이미지는 객체이므로 getFilesystemName() 메소드를 이용해야 합니다.
		String image = mr.getFilesystemName("image"); 
		
		//bean 객체에 셋팅합니다.
		//this.bean.setNum(0); //by sequence
		this.bean.setName(name);
		this.bean.setImage(image);
		this.bean.setStock(stock);
		this.bean.setPrice(price);
		this.bean.setGram(gram);
		this.bean.setCategory(category);
		this.bean.setPoint(point);
		this.bean.setInputdate(inputdate); //use default value
		this.bean.setRemark("");
		
		System.out.println(this.getClass() + "dopost()");
		System.out.println(bean);
		
		//dao를 이용하여 데이터 베이스에 추가해 줍니다.
		pdao.InsertData(bean);
		
		// 상품 목록 페이지로 이동합니다.
		new ProductListController().doGet(request, response);
		
	}

}
