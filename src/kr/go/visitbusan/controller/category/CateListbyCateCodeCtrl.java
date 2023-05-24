package kr.go.visitbusan.controller.category;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.visitbusan.dto.Category;
import kr.go.visitbusan.service.CateService;

import org.json.JSONObject;


@WebServlet("/CateListbyCateCode.do")
public class CateListbyCateCodeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		String cat1 = request.getParameter("cat1");
		
		if (cat1 != null){
			CateService cService = new CateService();
			ArrayList<Category> cateList = cService.CateListbyCateCode(cateCode);
			JSONObject json = new JSONObject();
		}
	}
}