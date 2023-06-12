package kr.go.visitbusan.controller.visit;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.Registration;
import kr.go.visitbusan.dto.Review;
import kr.go.visitbusan.dto.Visit;
import kr.go.visitbusan.service.RegiService;
import kr.go.visitbusan.service.ReviewService;
import kr.go.visitbusan.service.VisitService;

@WebServlet("/VisitDetail.do")
public class VisitDetailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String visitId = request.getParameter("visitId");
		String sid = request.getParameter("sid");
		
		VisitService vService = new VisitService();
		Visit visit = vService.visitByVisitId(visitId);
		request.setAttribute("visit", visit);
		
		ReviewService rService = new ReviewService();
		ArrayList<Review> reviewList = rService.reviewListbyVisitId(visitId);
		request.setAttribute("reviewList", reviewList);
		
		if (sid != null){
			RegiService reService = new RegiService();
			ArrayList<Registration> regiList = reService.RegiList(sid, visitId);
			if (regiList != null){
				for (Registration r : regiList){
					if (r.getrStatus().equals("여행완료")){
						request.setAttribute("reviewQ", "y");
						break;
					}
				}
			}
		}
		
		if(visit != null){
			RequestDispatcher view = request.getRequestDispatcher("visit/visitDetail.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("");
		}
	}
}