package kr.go.visitbusan.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.go.visitbusan.dto.LikeCtrl;
import kr.go.visitbusan.util.MySQL8;

public class LikeDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public LikeCtrl CheckLike(LikeCtrl like){
		LikeCtrl nlike = new LikeCtrl();
		try {
			conn = MySQL8.getConnection();
			pstmt = conn.prepareStatement(MySQL8.CHECK_LIKE);
			pstmt.setString(1, like.getLikedBy());
			pstmt.setString(2, like.getVisitId());
			rs = pstmt.executeQuery();
			if(rs.next()){
				nlike.setLikeId(rs.getString("likeId"));
				nlike.setLikedBy(rs.getString("likedBy"));
				nlike.setVisitId(rs.getString("visitId"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return nlike;
	}
	
	public String InsertLike(LikeCtrl like){
		int pId = 0;
		String likeId = "";
		try {
			conn = MySQL8.getConnection();
			pstmt = conn.prepareStatement(MySQL8.LIKE_ID_GENERATOR);
			rs = pstmt.executeQuery();
			if(rs.next()){
				pId = Integer.parseInt(rs.getString("likeId"));
			}
			pId += 1;
			likeId = pId+"";
		
			pstmt = conn.prepareStatement(MySQL8.INSERT_LIKE);
			pstmt.setString(1, likeId);
			pstmt.setString(2, like.getLikedBy());
			pstmt.setString(3, like.getVisitId());
			pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(conn, pstmt);
		}
		return likeId;
	}
	
	public int DeleteLike(String likeId){
		int i = 0;
		try {
			conn = MySQL8.getConnection();
			pstmt = conn.prepareStatement(MySQL8.DELETE_LIKE);
			pstmt.setString(1, likeId);
			i = pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(conn, pstmt);
		}
		return i;
	}
	
	public int CountLike(String visitId){
		int i = 0;
		try {
			conn = MySQL8.getConnection();
			pstmt = conn.prepareStatement(MySQL8.LIKE_COUNT);
			pstmt.setString(1, visitId);
			i = pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySQL8.close(conn, pstmt);
		}
		return i;
	}
}
