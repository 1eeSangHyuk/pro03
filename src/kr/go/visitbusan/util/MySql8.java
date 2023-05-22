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
	
	//sample
	public final static String SELECT_SAMPLE_ALL = "SELECT * FROM SAMPLE1 order by item3 desc";
	public final static String SELECT_SAMPLE_ONE = "SELECT * FROM SAMPLE1 WHERE ITEM1=? order by item3 desc";
	public final static String INSERT_SAMPLE = "INSERT INTO SAMPLE1 VALUES(?, ?, DEFAULT)";
	public final static String UPDATE_SAMPLE = "UPDATE SAMPLE1 SET ITEM2=? WHERE ITEM1=?";
	public final static String DELETE_SAMPLE = "DELETE FROM SAMPLE1 WHERE ITEM1=?";
	
	//visit
	public final static String VISIT_LIST_BY_CATECODE = "SELECT * FROM VISIT WHERE CATECODE=?";
	public final static String VISIT_LIST_BY_VISITID = "SELECT * FROM VISIT WHERE VISITID=?";
	public final static String ADMIN_INSERT_VISIT = "INSERT INTO VISIT VALUES(?, ?, ?, ?, ?, ?, ?, default)";
	public final static String ADMIN_UPDATE_VISIT = "UPDATE VISIT SET visitTitle=?, visitCateCode=?, visitAddr=?, visitImgMain=?, visitImgSub1=?, visitImgSub2=? where visitId=?";
	public final static String ADMIN_DELETE_VISIT = "DELETE FROM VISIT WHERE visitId=?";
	public final static String VISIT_ID_GENERATOR = "SELECT VISITID FROM VISIT ORDER BY VISITID DESC LIMIT 1";
	
	//cate

	
	//regi
	public final static String REGI_LIST_BY_MEMBER_ID = "select * from registration where registeredBy=?";
	public final static String INSERT_REGI = "INSERT INTO REGISTRATION VALUES(?, ?, ?, default, default);";
	public final static String UPDATE_REGI = "UPDATE REGISTRATION SET visitId=?, regDate=? where regId=?";
	public final static String DELETE_REGI = "DELETE FROM REGISTRATION WHERE regId=?";
	public final static String ADMIN_REGI_LIST_ALL = "select * from registration";
	public final static String ADMIN_UPDATE_RSTATUS = "UPDATE REGISTRATION SET rStatus=? where regId=?";
	public final static String REGI_ID_GENERATOR = "SELECT REGID FROM REGISTRATION ORDER BY REGID DESC LIMIT 1";
		
	//poke
	public final static String INSERT_POKE = "INSERT INTO POKE VALUES(?, ?, ?)";
	public final static String DELETE_POKE = "DELETE FROM POKE WHERE pokeId=?";
	public final static String POKE_LIST_BY_MEMBER_ID = "SELECT * FROM POKE WHERE pokedBy=?";
	public final static String COUNT_POKE_LIST_BY_VISIT_ID = "";
	
	
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