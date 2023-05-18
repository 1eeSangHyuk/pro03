package net.visitbusan.test;

import static org.junit.Assert.*;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import net.visitbusan.util.Oracle11;

import org.junit.Test;

import com.crypto.util.AES256;

public class LoginTest {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	@Test
	public void loginTest() {
		String key = "%p2s5v8y/";
		String pw = "";
		try {
			conn = Oracle11.getConnection();
			pstmt = conn.prepareStatement(Oracle11.LOGIN_TEST);
			pstmt.setString(1, "1111");
			rs = pstmt.executeQuery();
			if (rs.next()){
				try {
					pw = AES256.decryptAES256(rs.getString("pw"), key);
				} catch (InvalidKeyException | NoSuchPaddingException
						| NoSuchAlgorithmException | InvalidKeySpecException
						| InvalidAlgorithmParameterException
						| BadPaddingException | IllegalBlockSizeException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (pw.equals("1111")){
				System.out.println("로그인 성공");
			} else {
				System.out.println("로그인 실패");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		fail("Not yet implemented");
	}

}
