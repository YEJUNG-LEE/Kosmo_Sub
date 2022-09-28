package shopping.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.admin.bean.Admin;
import shopping.admin.dao.AdminDao;
import shopping.common.controller.SuperClass;

public class AdminLogoutController extends SuperClass {
	AdminDao adao = null ; 
	Admin bean = null ;
	
	public AdminLogoutController() {
		this.adao = new AdminDao() ;
		this.bean = new Admin() ; 
	}	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		// 만약 session 영역에 장바구니 정보가 들어 있으면, 반드시 임시 테이블에 저장해야 합니다. 
		
		// 나의 로그인 정보 및 쇼핑 정보들을 모두 지워 줍니다.
		super.session.invalidate();
		
		String gotopage = "/member/adminLoginForm.jsp";
		super.GotoPage(gotopage);
	}
}