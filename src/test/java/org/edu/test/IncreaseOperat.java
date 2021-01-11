package org.edu.test;

public class IncreaseOperat {

	public static void main(String[] args) {
		int x = 10;
		int y = 10;
		
		x++;
		++y;
		
		System.out.println(x++);
		System.out.println(++y);
		int result = x++ + ++y;
		System.out.println(result);
		System.out.println(x);
		System.out.println(y);
	}

}
