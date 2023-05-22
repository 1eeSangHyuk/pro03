package kr.go.visitbusan.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.visitbusan.util.MySql8;

public class SampleDAO {
	public Connection conn = null;
	public PreparedStatement pstmt = null;
	public ResultSet rs = null;
	String sql = "";
	
	//샘플 목록
	public ArrayList<Sample> getSampleList(){
		ArrayList<Sample> samList = new ArrayList<Sample>();
		try {
			conn = MySql8.getConnection();
			pstmt = conn.prepareStatement(MySql8.SELECT_SAMPLE_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Sample sam = new Sample();
				sam.setItem1(rs.getString("item1"));
				sam.setItem2(rs.getInt("item2"));
				sam.setItem3(rs.getString("item3"));
				samList.add(sam);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySql8.close(conn, pstmt, rs);
		}
		return samList;
	}
	
	//샘플 레코드 하나
	public Sample getSample(String item1){
		Sample sam = new Sample();
		try {
			conn = MySql8.getConnection();
			pstmt = conn.prepareStatement(MySql8.SELECT_SAMPLE_ONE);
			pstmt.setString(1, item1);
			rs = pstmt.executeQuery();
			if(rs.next()){
				sam.setItem1(item1);
				sam.setItem2(rs.getInt("item2"));
				sam.setItem3(rs.getString("item3"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySql8.close(conn, pstmt, rs);
		}
		return sam;
	}
	
	//샘플 레코드 추가
	public int insertSample(String item1, int item2){
		int i = 0;
		try {
			conn = MySql8.getConnection();
			pstmt = conn.prepareStatement(MySql8.INSERT_SAMPLE);
			pstmt.setString(1, item1);
			pstmt.setInt(2, item2);
			i = pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySql8.close(conn, pstmt);
		}
		return i;
	}
	
	//샘플 변경
	public int updateSample(String item1, int item2){
		int i = 0;
		try {
			conn = MySql8.getConnection();
			pstmt = conn.prepareStatement(MySql8.UPDATE_SAMPLE);
			pstmt.setInt(1, item2);
			pstmt.setString(2, item1);			
			i = pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySql8.close(conn, pstmt);
		}
		return i;
	}
	
	//샘플 삭제
	public int deleteSample(String item1){
		int i = 0;
		try {
			conn = MySql8.getConnection();
			pstmt = conn.prepareStatement(MySql8.DELETE_SAMPLE);
			pstmt.setString(1, item1);			
			i = pstmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			MySql8.close(conn, pstmt);
		}
		return i;
	}
}
