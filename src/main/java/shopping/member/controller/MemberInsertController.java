package shopping.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.member.dao.MemberDao;

public class MemberInsertController extends SuperClass {
	MemberDao mdao = null ; 
	Member bean = null ;
	
	public MemberInsertController() {
		this.mdao = new MemberDao() ;
		this.bean = new Member() ; 
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String gotopage = "/member/meInsertForm.jsp";
		super.GotoPage(gotopage);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		// 파라미터 챙기기
		String id = request.getParameter("id") ;
		String password = request.getParameter("password") ;
		String name = request.getParameter("name") ;
		String gender = request.getParameter("gender") ;
		String birth = request.getParameter("birth") ;
		
		// bean 객체에 셋팅하기
		bean.setcId(id);
		bean.setcPassword(password);
		bean.setcName(name); 
		bean.setcGender(gender);
		bean.setcBirth(birth);
		
		System.out.println(this.getClass() + " doPost()");
		System.out.println(bean);
		
		// dao 객체에 bean을 매개 변수로 주고, 테이블에 인서트
		mdao.InsertData(this.bean) ;

		// 회원 가입 후 로그인 페이지로 이동
//		String message = "회원 가입 축하, 로그인을 진행하세요." ;
//		super.session.setAttribute("message", message);
		new MemberLoginController().doGet(request, response);		
	}
}




