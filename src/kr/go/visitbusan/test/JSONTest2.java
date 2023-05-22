package kr.go.visitbusan.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.junit.Test;

@WebServlet("/JSONTest2.do")
public class JSONTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		jsonTest2(request, response);
	}
	
	JSONObject json = new JSONObject();
	
	public void jsonTest2(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String name = request.getParameter("name");
		
		SampleDAO sdao = new SampleDAO();
		Sample sam = new Sample();
		sam = sdao.getSample(name);
		json.put("name", sam.getItem1());
		json.put("point", sam.getItem2());
		json.put("resdate", sam.getItem3());
		PrintWriter out = response.getWriter();
		out.println(json.toString());
	}

	public void jsonTest2(String item1){
		SampleDAO sdao = new SampleDAO();
		Sample sam = new Sample();
		sam = sdao.getSample(item1);
		json.put("name", sam.getItem1());
		json.put("point", sam.getItem2());
		json.put("resdate", sam.getItem3());
	}
	
	@Test
	public void test(){
		System.out.println("JSONTest2");
		jsonTest2("chotaejeong");
		System.out.println(json.get("name"));
		System.out.println(json.get("point"));
		System.out.println(json.get("resdate"));
	}
}
