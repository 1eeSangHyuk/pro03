package kr.go.visitbusan.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySql8 {
	static String driver="com.mysql.cj.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/busan?serverTimezone=Asia/Seoul";
	static String user = "root";
	static String pw = "1234";
	
	public final static String SELECT_SAMPLE_ALL = "SELECT * FROM SAMPLE1 order by item3 desc";
	public final static String SELECT_SAMPLE_ONE = "SELECT * FROM SAMPLE1 WHERE ITEM1=? order by item3 desc";
	public final static String INSERT_SAMPLE = "INSERT INTO SAMPLE1 VALUES(?, ?, DEFAULT)";
	public final static String UPDATE_SAMPLE = "UPDATE SAMPLE1 SET ITEM2=? WHERE ITEM1=?";
	public final static String DELETE_SAMPLE = "DELETE FROM SAMPLE1 WHERE ITEM1=?";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, user, pw);
		return conn;
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection conn, PreparedStatement pstmt){
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}