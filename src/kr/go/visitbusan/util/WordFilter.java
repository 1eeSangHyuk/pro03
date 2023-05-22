package kr.go.visitbusan.util;

public class WordFilter {
	private static String[] list = {"asdf", "zxcv"};
	
	public static boolean compare(String keyword){
		boolean b = false;
		for (String a : list){
			if(keyword.contains(a)){
				b = true;
			}
		}
		return b;
	}
}
