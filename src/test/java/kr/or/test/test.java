package kr.or.test;

public class test {

	public static void main(String[] args) {
		int[] Array = new int [5];
		int num=1;
		for(int i=1;i<=Array.length; i++) {
			Array[i] = num++;
			System.out.println(Array[i]+"");
			
		}
	}

}
