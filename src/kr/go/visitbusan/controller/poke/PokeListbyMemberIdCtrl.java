package kr.go.visitbusan.controller.poke;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.Poke;
import kr.go.visitbusan.service.PokeService;

@WebServlet("/PokeListbyMemberId.do")
public class PokeListbyMemberIdCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pokedBy = request.getParameter("sid");
		PokeService service = new PokeService();
		ArrayList<Poke> pokeList = service.PokeListByMemberId(pokedBy);
		request.setAttribute("pokeList", pokeList);
		
		RequestDispatcher view = request.getRequestDispatcher("");
		view.forward(request, response);
	}
}