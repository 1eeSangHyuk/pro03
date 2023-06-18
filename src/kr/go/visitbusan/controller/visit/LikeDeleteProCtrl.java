package kr.go.visitbusan.controller.visit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.LikeCtrl;
import kr.go.visitbusan.service.LikeService;
import kr.go.visitbusan.service.VisitService;

import org.json.JSONObject;

@WebServlet("/LikeDeletePro.do")
public class LikeDeleteProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	JSONObject json = new JSONObject();

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		likeDelete(request, response);
	}
	
	public void likeDelete(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String likedBy = request.getParameter("likedBy");
		String visitId = request.getParameter("visitId");
		LikeCtrl like = new LikeCtrl();
		like.setLikedBy(likedBy);
		like.setVisitId(visitId);
		
		LikeService service = new LikeService();
		LikeCtrl nLike = service.CheckLike(like);
		int i = service.DeleteLike(nLike.getLikeId());
		
		if (i > 0){
			VisitService vService = new VisitService();
			int j = vService.deleteLike(visitId);
			if(j==1){
				json.put("res", "1");
				PrintWriter out = response.getWriter();
				out.println(json.toString());
			}
		} else {
			json.put("res", "0");
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		}
	}
}