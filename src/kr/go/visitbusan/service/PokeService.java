package kr.go.visitbusan.service;

import java.util.ArrayList;

import kr.go.visitbusan.dto.Poke;
import kr.go.visitbusan.model.PokeDAO;

public class PokeService {
	PokeDAO pdao = new PokeDAO();
	
	// 계정별 찜한 목록 불러오기
	public ArrayList<Poke> PokeListByMemberId(String pokedBy){
		ArrayList<Poke> pokeList = pdao.PokeListByMemberId(pokedBy);
		return pokeList;
	}
	
	// 찜하기
	public int InsertPoke(Poke poke){
		int i = pdao.InsertPoke(poke);
		return i;
	}
	
	// 찜한 visit 삭제
	public int DeletePoke(String pokeId){
		int i = pdao.DeletePoke(pokeId);
		return i;
	}
	
	// 한 visit이 찜 당한 횟수
	public int CountPokeListByVisitId(String visitId){
		int i = pdao.CountPokeListByVisitId(visitId);
		return i;
	}
}