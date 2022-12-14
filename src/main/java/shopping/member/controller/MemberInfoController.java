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

public class MemberInfoController extends SuperClass {
	MemberDao mdao = null ; 
	Member bean = null ;
	
	public MemberInfoController() {
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
		
		System.out.println("info doPost1");
		System.out.println("super getcId : "+super.loginfo.getcId());
		this.bean = this.mdao.SelectOne(super.loginfo.getcId()) ;
		System.out.println("info doPost2");
		System.out.println("info1 : "+this.bean.getcId());
		System.out.println("info2 : "+this.bean.getcPassword());
		System.out.println("info3 : "+this.bean.getcName());
		System.out.println("info4 : "+this.bean.getcGender());
		System.out.println("info5 : "+this.bean.getcBirth());
		System.out.println("info cId : " + request.getParameter("cId"));
		System.out.println("info doPost3");
		System.out.println("info doPost4 : " + super.loginfo.getcId());
		
		String gotopage = "/member/memberUpdateForm.jsp";
		System.out.println("info doPost5");
		super.GotoPage(gotopage);
		System.out.println("info doPost6");
		
		
		System.out.println(this.getClass() + " doPost()");
		System.out.println(bean);
		
		// dao ????????? bean??? ?????? ????????? ??????, ???????????? ?????????
//		mdao.UpdateData(this.bean) ;

		// ?????? ?????? ?????? ??? ?????? ???????????? ??????
//		String message = "?????? ????????? ?????????????????????." ;
//		super.session.setAttribute("message", message);
//		new MainController().doGet(request, response);		
		
	}
}




