package kr.go.visitbusan.controller.poke;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.Poke;
import kr.go.visitbusan.service.PokeService;

@WebServlet("/PokeInsertPro.do")
public class PokeInsertProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pokeId = request.getParameter("pokeId");
		String pokedBy = request.getParameter("pokedBy");
		String visitId = request.getParameter("visitId");
		Poke poke = new Poke();
		poke.setPokeId(pokeId);
		poke.setPokedBy(pokedBy);
		poke.setVisitId(visitId);
		
		PokeService service = new PokeService();
		int i = service.InsertPoke(poke);
		if(i>0){
			response.sendRedirect("");
		} else {
			response.sendRedirect("");
		}
	}
}