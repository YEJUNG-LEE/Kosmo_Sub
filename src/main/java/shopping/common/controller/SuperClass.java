package shopping.common.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopping.admin.bean.Admin;
import shopping.member.bean.Member;

public class SuperClass implements SuperController  {
	private HttpServletRequest request = null ;
	private HttpServletResponse response = null ;
	protected HttpSession session = null ; // 세션 객체
	protected Admin loginfo_admin = null ; // 관리자 로그인 여부
	protected Member loginfo = null ; // 회원 로그인 여부

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	public void setErrorMessage(String message) {
		// request 영역에 사용자를 위한 통지를 바인딩합니다.
//		this.request.setAttribute("errmsg", message); 
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) {
		// 서브 클래스에서 호출하여 request, response를 인스턴스 변수에 대입합니다.
		System.out.println("doProcess method1");
		this.request = request ;
		this.response = response ;
		System.out.println("doProcess method2");
		this.session = request.getSession() ; 
		
		// 주의 : 해당 데이터 타입으로 강등 요망
		this.loginfo = (Member)this.session.getAttribute("loginfo") ;
		
	}
	
	// 관리자 전용 doProcess 메소드
	public void doProcess_admin(HttpServletRequest request, HttpServletResponse response) {
		// 서브 클래스에서 호출하여 request, response를 인스턴스 변수에 대입합니다.
		System.out.println("doProcess_admin method1");
		this.request = request ;
		this.response = response ;
		System.out.println("doProcess_admin method2");
		this.session = request.getSession() ; 
		
		// 주의 : 해당 데이터 타입으로 강등 요망
		loginfo = (Member)this.session.getAttribute("loginfo");
		
		this.loginfo_admin = new Admin();
		this.loginfo_admin.setId(loginfo.getcId());
		this.loginfo_admin.setPassword(loginfo.getcPassword());
	}

	public void GotoPage(String gotopage) {
		// 이동할 페이지로 포워딩을 수행합니다.
		System.out.println("1gotopage : "+gotopage);
		RequestDispatcher dispatcher = this.request.getRequestDispatcher(gotopage) ;
		
		try {
			dispatcher.forward(this.request, this.response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
