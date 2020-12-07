package kr.or.test;

import java.io.IOException;

public class ExceptionTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int number=0;
		System.out.print("키보드로 숫자를 입력해주새요.");
		try {
			number=System.in.read();//키보드로 입력받은 내용을 문자가 아닌 바이트데이터 반환
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("키보드로 입력받은 바이트문자 = " + number);//엔터쳐서 줄바꿈하는 효가
		System.out.println("키보드로 입력받은 수는 = " + (char)number);
		//int형 number변수를 1문자형 char형으로 변환하는 방볍(char)number
		//int형number변수를 문자열형 String형으로 변환하는 방법 Integer.toString(number)
	}

}
