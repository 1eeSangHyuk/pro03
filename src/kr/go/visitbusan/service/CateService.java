package kr.go.visitbusan.service;

import java.util.ArrayList;

import kr.go.visitbusan.dto.Category;
import kr.go.visitbusan.model.CateDAO;

public class CateService {
	CateDAO cdao = new CateDAO();
	
	// CATECODE 0101 ~ 0304
	public ArrayList<Category> CateListbyCateCode(String cateCode){
		ArrayList<Category> cateList = cdao.CateListbyCateCode(cateCode);
		return cateList;
	}
	
	// CATECODE 01 02 03
	public ArrayList<Category> CateListbyCateCode1(String cateCode){
		ArrayList<Category> cateList = cdao.CateListbyCateCode1(cateCode);
		return cateList;
	}
}
