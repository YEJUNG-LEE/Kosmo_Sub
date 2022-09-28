package shopping.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.member.dao.MemberDao;

public class MemberDeleteController extends SuperClass {
	MemberDao mdao = null ; 
	
	public MemberDeleteController() {
		this.mdao = new MemberDao() ;
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		System.out.println("request.getParameter(cId) : " + request.getParameter("cId"));
		
		String id = request.getParameter("cId") ;
		System.out.println("request.getParameter(cId) : " + request.getParameter("cId"));
		System.out.println("id : "+id);
		this.mdao.DeleteData(id) ; // 해당 아이디를 이용하여 행 삭제후
		
		// 현 회원이 사용하던 세션 정보를 클리어 해줍니다.
		super.session.invalidate();
		
		// 로그인 페이지로 이동.
		new MemberLoginController().doGet(request, response); 
	}
}