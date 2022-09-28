package shopping.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.member.dao.MemberDao;

public class MemberLogoutController extends SuperClass {
	MemberDao mdao = null ; 
	Member bean = null ;
	
	public MemberLogoutController() {
		this.mdao = new MemberDao() ;
		this.bean = new Member() ; 
	}	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		// 만약 session 영역에 장바구니 정보가 들어 있으면, 반드시 임시 테이블에 저장해야 합니다. 
		
		// 나의 로그인 정보 및 쇼핑 정보들을 모두 지워 줍니다.
		super.session.invalidate();
		
		String gotopage = "/member/memberLoginForm.jsp";
		super.GotoPage(gotopage);
	}
}