package kr.go.visitbusan.controller.visit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.Visit;
import kr.go.visitbusan.service.VisitService;

@WebServlet("/VisitInsertPro.do")
public class VisitInsertProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//multipartrequest?
		Visit visit = new Visit();
		visit.setVisitTitle(request.getParameter("title"));
		visit.setVisitCateCode(request.getParameter("cateCode"));
		visit.setVisitAddr(request.getParameter("address1")+" "+request.getParameter("address2")+" ("+request.getParameter("postcode")+")");
		visit.setVisitImgMain(request.getParameter("imgMain"));
		visit.setVisitImgSub1(request.getParameter("imgSub1"));
		visit.setVisitImgSub2(request.getParameter("imgSub2"));
		
		VisitService service = new VisitService();
		int i = service.insertVisit(visit);
		if (i>0){
			response.sendRedirect("");
		} else {
			response.sendRedirect("");
		}
	}
}