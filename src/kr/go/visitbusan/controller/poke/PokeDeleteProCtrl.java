package kr.go.visitbusan.controller.poke;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.service.PokeService;

@WebServlet("/PokeDeletePro.do")
public class PokeDeleteProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pokeId = request.getParameter("pokeId");
		
		PokeService service = new PokeService();
		int i = service.DeletePoke(pokeId);
		if(i>0){
			response.sendRedirect("/PokeListbyMemberId.do");
		} else {
			response.sendRedirect("");
		}
	}
}