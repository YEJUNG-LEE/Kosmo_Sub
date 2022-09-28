package shopping.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.common.controller.SuperClass;
import shopping.member.bean.Member;
import shopping.member.dao.MemberDao;

public class MemberListController extends SuperClass {
	MemberDao mdao = null ; 
	
	public MemberListController() {
		this.mdao = new MemberDao() ;
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doProcess_admin(request, response);
		
		System.out.println("0");
		List<Member> lists = this.mdao.SelectAll() ;
		System.out.println("회원 목록수 : " + lists.size());
		
		request.setAttribute("lists", lists);
		
		String gotopage = "/member/memberList.jsp";
		super.GotoPage(gotopage);
	}	
}
