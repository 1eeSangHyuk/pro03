package net.visitbusan.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.visitbusan.util.Oracle11;

import org.junit.Test;

public class OracleTest {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
			
	@Test
	public void test() {
		try {
			conn = Oracle11.getConnection();
			pstmt = conn.prepareStatement(Oracle11.SELECT_SAMPLE);
			rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println(rs.getString("item1"));
				System.out.println(rs.getString("item2"));
				System.out.println(rs.getString("item3"));				
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(conn, pstmt, rs);
		}
//		fail("Not yet implemented");
	}
}