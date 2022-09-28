package shopping.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.admin.bean.Admin;
import shopping.admin.dao.AdminDao;
import shopping.common.controller.MainController;
import shopping.common.controller.SuperClass;
import shopping.common.controller.SuperController;

public class AdminLoginController extends SuperClass {
	AdminDao adao = null ; 
	Admin bean = null ;
	
	public AdminLoginController() {
		this.adao = new AdminDao() ;
		this.bean = new Admin() ; 
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		String gotopage = "/main_test1/main_admin_test1.jsp";
		super.GotoPage(gotopage);			
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		String id = request.getParameter("adId") ;
		String password = request.getParameter("adPassword") ;
		System.out.println("id : "+id);
		System.out.println("password : "+password);
		
		this.bean = adao.LoginCheck(id, password) ;
		System.out.println("this.bean : "+this.bean);
		if (bean == null) { // login failure
			
			System.out.println("bean null 1");
//			String message = "아이디나 비밀 번호가 잘못 되었습니다." ;
//			super.setErrorMessage(message) ;
			
			String gotopage = "/main_test1/main.jsp";
			super.GotoPage(gotopage);
			
		} else { // login success
			System.out.println("bean not null 1");
			// 로그인 정보를 세션 영역에 바인딩합니다.
			super.session.setAttribute("loginfo", this.bean);
			super.session.setAttribute("adminCheck", "admin");
			
			// 장바구니에 나의 쇼핑 정보가 있으면, session 영역에 바인딩합니다.
			
			// 관리자 메인 페이지로 이동합니다.
			new AdminMainController().doGet(request, response);
		}
	}
}