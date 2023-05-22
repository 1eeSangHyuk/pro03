package kr.go.visitbusan.test;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.visitbusan.util.Oracle11;

import org.junit.Test;

public class DTOTest {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	@Test
	public void test() {
		ArrayList<Sample> samList = new ArrayList<Sample>();
		try {
			conn = Oracle11.getConnection();
			pstmt = conn.prepareStatement(Oracle11.SELECT_SAMPLE);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Sample sam = new Sample();
				sam.setItem1(rs.getString("item1"));
				sam.setItem2(rs.getInt("item2"));
				sam.setItem3(rs.getString("item3"));
				samList.add(sam);
			}
			for(Sample sam : samList){
				System.out.println(sam.getItem1());
				System.out.println(sam.getItem2());
				System.out.println(sam.getItem3());
				System.out.println();
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			Oracle11.close(conn, pstmt, rs);
		}
	}
}

