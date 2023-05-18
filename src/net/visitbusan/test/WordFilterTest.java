package net.visitbusan.test;

import static org.junit.Assert.*;
import net.visitbusan.util.WordFilter;

import org.junit.Test;

public class WordFilterTest {
	
	String st = "qwerqqwerqwerqwerasfd";
	
	@Test
	public void test() {
		boolean a = WordFilter.compare(st);
		if (a==true){
			System.out.println("금칙어 포함 문장");
		} else {
			System.out.println("문제없음");
		}
	}
}