package kr.or.test;

public class LoopApp {

	public static void main(String[] args) {
		// 반복문중에 for문
		//메서드에서 사용하는 변수 아래 2줄
		int[] numbers = {11,21,31,41,51,61,71,81,91,101};//배열변수 선언
		for(int cnt=0;cnt<10;cnt++)	{//cnt++ => cnt=cnt+1; 의미 1씩 증가하는 의미	
			System.out.println("현재 카운터는" + numbers[cnt]);
			//prinln함수는 함번 출력후 newline 엔터치는 역할.
			//10번 반복을 하는데, numbers[0], numbers[1], .... numbers[9] 출력
		}
	}
}
