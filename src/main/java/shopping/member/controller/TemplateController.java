package shopping.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.member.dao.MemberDao;

public class TemplateController extends SuperClass {
	MemberDao mdao = null ; 
	Member bean = null ;
	
	public TemplateController() {
		this.mdao = new MemberDao() ;
		this.bean = new Member() ; 
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess(request, response);
		
		String id = request.getParameter("id") ;
		int salary = Integer.parseInt(request.getParameter("salary")) ;
		
		request.setAttribute("ddd", null);
		super.session.setAttribute("ddd", null);
		
		// 로그인 성공이라고 가정하고
		String gotopage = "/member/meList.jsp";
		super.GotoPage(gotopage);
	}
}
