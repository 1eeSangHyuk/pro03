package kr.go.visitbusan.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/JSONTest3.do")
public class JSONTest3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	JSONObject json1 = new JSONObject();
	JSONArray json2 = new JSONArray();
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		jsonTest3(request, response);
	}
	
	public void jsonTest3(HttpServletRequest request, HttpServletResponse response) throws IOException{
		SampleDAO sdao = new SampleDAO();
		ArrayList<Sample> samList = new ArrayList<Sample>();
		samList = sdao.getSampleList();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("data", samList);
		
		net.sf.json.JSONObject json3 = new net.sf.json.JSONObject();
		json3.putAll(map);
		
		PrintWriter out = response.getWriter();
		out.println(json3.toString());
	}	
}