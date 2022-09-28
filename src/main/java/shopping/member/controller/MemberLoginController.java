package shopping.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.MainController;
import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.member.dao.MemberDao;

public class MemberLoginController extends SuperClass {
	MemberDao mdao = null ; 
	Member bean = null ;
	
	public MemberLoginController() {
		this.mdao = new MemberDao() ;
		this.bean = new Member() ; 
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String gotopage = "/member/memberLoginForm.jsp";
		super.GotoPage(gotopage);			
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String id = request.getParameter("cId") ;
		String password = request.getParameter("cPassword") ;
		
		this.bean = mdao.LoginCheck(id, password) ;
		
		if (bean == null) { // login failure
			
//			String message = "아이디나 비밀 번호가 잘못 되었습니다." ;			
//			super.setErrorMessage(message) ;
			System.out.println("bean == null");
			String gotopage = "/main_test1/main.jsp";
			super.GotoPage(gotopage);
			
		} else { // login success
			// 로그인 정보를 세션 영역에 바인딩합니다.
			System.out.println("bean != null");
			this.bean = mdao.SelectOne(id) ;
			super.session.setAttribute("loginfo", this.bean);
			super.session.setAttribute("adminCheck", "member");
			
			// 장바구니에 나의 쇼핑 정보가 있으면, session 영역에 바인딩합니다.
			
			// 메인 페이지로 이동합니다.
			new MainController().doGet(request, response);
		}
	}
}