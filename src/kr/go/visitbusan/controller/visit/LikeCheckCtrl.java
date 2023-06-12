package kr.go.visitbusan.controller.visit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.go.visitbusan.dto.LikeCtrl;
import kr.go.visitbusan.service.LikeService;
import kr.go.visitbusan.service.VisitService;

@WebServlet("/LikeCheck.do")
public class LikeCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	JSONObject json = new JSONObject();

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		likeCheck(request, response);
	}
	
	public void likeCheck(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String likedBy = request.getParameter("likedBy");
		String visitId = request.getParameter("visitId");
		LikeCtrl like = new LikeCtrl();
		like.setLikedBy(likedBy);
		like.setVisitId(visitId);
		
		LikeService lService = new LikeService();
		LikeCtrl nLike = lService.CheckLike(like);
		
		VisitService vService = new VisitService();
		int i = vService.getLikeCnt(visitId);
		
		if (nLike.getLikeId() != null){
			json.put("cnt", i);
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		} else {
			request.setAttribute("likeId", nLike.getLikeId());
			json.put("res", "0");
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		}
	}
}