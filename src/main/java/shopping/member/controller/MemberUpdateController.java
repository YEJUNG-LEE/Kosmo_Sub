package shopping.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.MainController;
import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.member.dao.MemberDao;

public class MemberUpdateController extends SuperClass {
	MemberDao mdao = null ; 
	Member bean = null ;
	
	public MemberUpdateController() {
		this.mdao = new MemberDao() ;
		this.bean = new Member() ; 
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String id = request.getParameter("id") ;
		this.bean = this.mdao.SelectOne(id) ;	
		
		request.setAttribute("bean", this.bean);
		
		String gotopage = "/member/meUpdateForm.jsp";
		super.GotoPage(gotopage);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		// 파라미터 챙기기
		String id = request.getParameter("cId") ;
		String password = request.getParameter("cPassword1") ;
		String name = request.getParameter("cName") ;
		String gender = request.getParameter("cGender") ;
		String birth = request.getParameter("cBirth") ;
		
		// bean 객체에 셋팅하기
		bean.setcId(id);
		bean.setcPassword(password);	
		bean.setcName(name); 
		bean.setcGender(gender);
		bean.setcBirth(birth);
		
		System.out.println(this.getClass() + " doPost()");
		System.out.println(bean);
		
		super.session.setAttribute("loginfo", this.bean);
		// dao 객체에 bean을 매개 변수로 주고, 테이블에 인서트
		mdao.UpdateData(this.bean) ;

		// 회원 정보 수정 후 메인 페이지로 이동
//		String message = "회원 정보가 수정되었습니다." ;
//		super.session.setAttribute("message", message);
		new MainController().doGet(request, response);		
	}
}




