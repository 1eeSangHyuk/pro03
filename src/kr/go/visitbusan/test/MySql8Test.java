package kr.go.visitbusan.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.go.visitbusan.util.MySql8;
import kr.go.visitbusan.util.Oracle11;

import org.junit.Test;

public class MySql8Test {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
			
	@Test
	public void test() {
		try {
			conn = MySql8.getConnection();
			pstmt = conn.prepareStatement(Oracle11.SELECT_SAMPLE);
			rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println(rs.getString("id"));
				System.out.println(rs.getString("pw"));
				System.out.println(rs.getString("name"));				
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(conn, pstmt, rs);
		}
//		fail("Not yet implemented");
	}
}