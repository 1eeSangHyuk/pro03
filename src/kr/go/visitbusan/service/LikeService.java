package kr.go.visitbusan.service;

import kr.go.visitbusan.dto.LikeCtrl;
import kr.go.visitbusan.model.LikeDAO;

public class LikeService {
	
	LikeDAO ldao = new LikeDAO();
	
	public LikeCtrl CheckLike(LikeCtrl like){
		LikeCtrl nlike = ldao.CheckLike(like);
		return nlike;
	}
	
	public String InsertLike(LikeCtrl like){
		String likeId = ldao.InsertLike(like);
		return likeId;
	}
	
	public int DeleteLike(String likeId){
		int i = ldao.DeleteLike(likeId);
		return i;
	}
}
