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

public class ProductUpdateController extends SuperClass {
	ProductDao pdao = null;
	Product bean = null;
	
	public ProductUpdateController() {
		this.pdao = new ProductDao();
		this.bean = new Product();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		int num = Integer.parseInt(request.getParameter("num"));
		this.bean = this.pdao.SelectOne(num);
		
		request.setAttribute("bean", this.bean);
		
		String gotopage = "/product/jeprUpdateForm.jsp";
		super.GotoPage(gotopage);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		//이미지 업로드인 경우에는 FrontController에서 MultipartRequest 객체 mr가 request에 바인딩됩니다.
		//mr 객체를 dopost() 메소드에서 파라미터를 처리해주면 됩니다.
		MultipartRequest mr = (MultipartRequest)request.getAttribute("mr");
		
		//파라미터를 챙깁니다.
		int num = Integer.parseInt(mr.getParameter("num")); //업데이트에서는 추가
		String name = mr.getParameter("name");
		int stock = Integer.parseInt(mr.getParameter("stock"));
		int price = Integer.parseInt(mr.getParameter("price"));
		int gram = Integer.parseInt(mr.getParameter("gram"));
		String category = mr.getParameter("category");
		int point = Integer.parseInt(mr.getParameter("point"));
		String inputdate = mr.getParameter("inputdate"); //업데이트에서는 추가
		String remark = mr.getParameter("remark"); //업데이트에서는 추가
		
		//이미지는 객체이므로 getFilesystemName() 메소드를 이용해야 합니다.
		String image = mr.getFilesystemName("image"); 
		
		//bean 객체에 셋팅합니다.
		this.bean.setName(name);
		this.bean.setImage(image);
		this.bean.setStock(stock);
		this.bean.setPrice(price);
		this.bean.setGram(gram);
		this.bean.setCategory(category);
		this.bean.setPoint(point);
		
		//업데이트 하면서 변경된 것
		this.bean.setNum(num); //수정이미로 기본키가 넘어와야 합니다.
		this.bean.setInputdate(inputdate); //관리자가 수정할 수 있으므로....
		this.bean.setRemark(remark);
		
		System.out.println(this.getClass() + "dopost()");
		System.out.println(bean);
		
		//dao를 이용하여 데이터 베이스에 수정합니다.
		pdao.UpdateData(bean);
		
		// 상품 목록 페이지로 이동합니다.
		new ProductListController().doGet(request, response);
		
	}

}
