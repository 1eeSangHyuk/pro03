package kr.go.visitbusan.controller.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.Review;
import kr.go.visitbusan.service.ReviewService;

@WebServlet("/ReviewListbyVisitId.do")
public class ReviewListbyVisitIdCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String visitId = request.getParameter("visitId");
		
		ReviewService rService = new ReviewService();
		ArrayList<Review> reviewList = rService.reviewListbyVisitId(visitId);
		request.setAttribute("reviewList", reviewList);
	}
}