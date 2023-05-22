package kr.go.visitbusan.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.visitbusan.util.MySQL8;

import org.junit.Test;

public class DAOTest {

	@Test
	public void getSampleList(){
		System.out.println("*********************************");
		System.out.println("Sample에서 List로 데이터 가져오기");
		System.out.println();
		ArrayList<Sample> samList = new ArrayList<Sample>();
		SampleDAO sdao = new SampleDAO();
		samList = sdao.getSampleList();
		for(Sample sam : samList){
			System.out.println("item1 : "+sam.getItem1());
			System.out.println("item2 : "+sam.getItem2());
			System.out.println("item3 : "+sam.getItem3());
			System.out.println();
		}
		System.out.println("*********************************");
	}
	
	@Test
	public void getSample(){
		System.out.println("*********************************");
		System.out.println("Sample에서 데이터 불러오기");
		System.out.println();
		SampleDAO sdao = new SampleDAO();
		String item1 = "kimkitae";
		Sample sam = sdao.getSample(item1);
		System.out.println(sam.getItem1());
		System.out.println(sam.getItem2());
		System.out.println(sam.getItem3());
		System.out.println("*********************************");
	}
	
	@Test
	public void insertSample(){
		System.out.println("*********************************");
		System.out.println("Sample에 레코드 추가");
		System.out.println();
		SampleDAO sdao = new SampleDAO();
		String item1 = "lsh";
		int item2 = 369;
		int i = 0;
		i = sdao.insertSample(item1, item2);
		if(i > 0){
			System.out.println("데이터 레코드 추가 성공");
		}
		System.out.println(i);
		System.out.println("*********************************");
	}
	
	@Test
	public void updateSample(){
		System.out.println("*********************************");
		System.out.println("Sample 레코드 변경");
		System.out.println();
		SampleDAO sdao = new SampleDAO();
		String item1 = "chotaejeong";
		int item2 = 100;
		int i = 0;
		i = sdao.updateSample(item1, item2);
		if(i > 0){
			System.out.println("데이터 레코드 변경 성공");
		}
		System.out.println(i);
		System.out.println("*********************************");
	}
	
	@Test
	public void deleteSample(){
		System.out.println("*********************************");
		System.out.println("Sample 레코드 삭제");
		System.out.println();
		SampleDAO sdao = new SampleDAO();
		String item1 = "chokyoheing";
		int i = 0;
		i = sdao.deleteSample(item1);
		if(i > 0){
			System.out.println("데이터 레코드 삭제 성공");
		}
		System.out.println(i);
		System.out.println("*********************************");
	}
}
