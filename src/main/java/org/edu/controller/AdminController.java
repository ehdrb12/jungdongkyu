package org.edu.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.edu.service.IF_MemberService;
import org.edu.util.SecurityCode;
import org.edu.vo.BoardVO;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

//스프링에서 사용가능한 클래스를 빈(커피Bean)이라고 하고, @Contorller 클래스를 사용하면 됨.
@Controller
public class AdminController {
	//@Inject == @Autowired 의존성 주입방식 DI(Dependency Inject)으로 
	//외부 라이브러리 = 컴포넌트 = 모듈  = 실행클래스 = 인스턴스 갖다쓰기(아래)
	@Inject
	SecurityCode securityCode;
	
	@Inject
	IF_MemberService memberService;//멤버인터페이스를 주입받아서 memberService오브젝트 변수를 생성.
	
	@RequestMapping(value="/admin/board/board_write",method=RequestMethod.GET)//URL경로
	public String board_write() throws Exception {
		return "admin/board/board_write";//파일경로
	}
	@RequestMapping(value="/admin/board/board_write",method=RequestMethod.POST)
	public String board_write(MultipartFile file, BoardVO boardVO) throws Exception {
		//post받은 boardVO내용을 DB서비스에 입력하면 됩니다.
		//dB에 입력후 새로고침명령으로 게시물 테러를 당하지 않으려면, redirect로 이동처리 합니다.(아래)
		return "redirect:/admin/board/board_list";
	}
	@RequestMapping(value="/admin/board/board_view", method=RequestMethod.GET)
	public String board_view(@RequestParam("bno") Integer bno, Model model) throws Exception {
		//jsp로 보낼 더미 데이터 boardVO에 담아서 보낸다.
		//실제로는 아래처럼 더미데이터를 만드것이 아닌
		//쿼리스트링(질의문자열)로 받아온 bno(게시물 고유번호)를 이용해서 DB에서
		//select * from tbl_boarad where bno = ? 마이바티스 실행이 된 결과값이 BoardVO형으로 받아서 jsp보내줌.
		//'3', '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user00', '2019-10-10 12:25:36', '2019-10-10 12:25:36', '0', '0'
		BoardVO boardVO = new BoardVO();
		boardVO.setBno(1);
		boardVO.setTitle("첫번째 게시물 입니다.");
		String xss_data = "첫번째 내용 입니다.<br><br><br>줄바꿈 처리입니다. <script>location.href('http://naver.com');</script>";
		boardVO.setContent(securityCode.unscript(xss_data));
		boardVO.setWriter("admin");
		Date regdate = new Date();
		boardVO.setRegdate(regdate);
		boardVO.setView_count(2);
		boardVO.setReply_count(0);
		model.addAttribute("boardVO", boardVO);
		return "admin/board/board_view";
	}
	@RequestMapping(value="/admin/board/board_list",method=RequestMethod.GET)
	public String board_list(Model model) throws Exception {
		//테스트용 더미 게시판 데이터 만들기(아래)
		BoardVO input_board = new BoardVO();
		input_board.setBno(1);
		input_board.setTitle("첫번째 게시물 입니다.");
		input_board.setContent("첫번째 내용 입니다.<br>줄바꿈했습니다.");
		input_board.setWriter("admin");
		Date regdate = new Date();
		input_board.setRegdate(regdate);
		input_board.setView_count(2);
		input_board.setReply_count(0);
		BoardVO[] board_array = new BoardVO[2];
		//input_board = {1,"첫번째 게시물 입니다.","첫번째 내용 입니다.<br>줄바꿈했습니다.","admin",now(),2,0};
		board_array[0] = input_board;
		//------------------------------------
		BoardVO input_board2 = new BoardVO();
		input_board2.setBno(2);
		input_board2.setTitle("두번째 게시물 입니다.");
		input_board2.setContent("두번째 내용 입니다.<br>줄바꿈했습니다.");
		input_board2.setWriter("user02");
		input_board2.setRegdate(regdate);
		input_board2.setView_count(2);
		input_board2.setReply_count(0);
		//input_board2 = {2,"두번째 게시물 입니다.","두번째 내용 입니다.<br>줄바꿈했습니다.","user02",now(),2,0};
		board_array[1] = input_board2;
		//-------------------------------------
		List<BoardVO> board_list = Arrays.asList(board_array);//배열타입을 List타입으로 변경절차.
		model.addAttribute("board_list", board_list);
		return "admin/board/board_list";
	}
	
	//메서드 오버로딩(예, 동영상 로딩중..., 로딩된 매개변수가 다르면, 메서드이름을 중복가능합니다. 대표적인 다형성구현)
	@RequestMapping(value="/admin/member/member_write",method=RequestMethod.POST)
	public String member_write(@RequestParam("user_name") String user_name) throws Exception {
		//아래 GET방식의 폼 출력화면에서 데이터 전송받은 내용을 처리하는 바인딩.
		//DB베이스 입력/출력/삭제/수정 처리-다음에...
		return "redirect:/admin/member/member_list";//절대경로로 처리된 이후에 이동할 URL주소를 여기에 반환
	}
	
	@RequestMapping(value="/admin/member/member_write",method=RequestMethod.GET)
	public String member_write() throws Exception {
		return "admin/member/member_write";
	}
	
	//member_list.jsp에서 보낸 데이터를 수신하는 역할 @RequestParam("키이름") 리퀘스트파라미터 클래스 사용.
	//현재컨트롤러 클래스에서 member_view.jsp로 데이터를 보내는 역할 Model 클래스 사용.
	//member_list.jsp -> @RequestParam("user_id")수신, Model송신 -> member_view.jsp
	@RequestMapping(value="/admin/member/member_view",method=RequestMethod.GET)
	public String member_view(@RequestParam("user_id") String user_id, Model model) throws Exception {
		//내가 멤버 리스트가 보고 싶어서 리스트 클릭한거 자체가 "1명멤버내용 주세요"하고 요청을 한거고 
		//그 요청을 컨트롤러에서 받은건가요?
		//위에서 수신한 user_id를 개발자가 만든 user_id2이름으로 member_view.jsp 보냅니다.(아래)
		//member_view.jsp에서 model로 수신한 데이터 user_id2 를 출력하는 방법은 점심 이후에...

		model.addAttribute("user_id2", user_id + "<script>alert('메롱');</script> 님");
		return "admin/member/member_view";
	}
	
	@RequestMapping(value="/admin/member/member_list",method=RequestMethod.GET)
	public String member_list(@RequestParam(value="search_type",required=false) String search_type, @RequestParam(value="search_keyword",required=false) String search_keyword, Model model) throws Exception {
		/*
		 * String[][] members = {
		 * {"admin","찐관리자","admin@abc.com","true","2020-12-04","ROLE_ADMIN"},
		 * {"user","일반사용자","user@abc.com","false","2020-12-04","ROLE_USER"} };
		 * //{"user_id":"admin","user_name":"관리자",...} 해시#데이터 타입<키(key),값(value)>(그물-낚시)
		 * //Map 타입이 부모, HashMap타입 자식클래스, 관례적으로 사용, paramMap오브젝트의 확장하기 편하도록 하기 위해서 상속.
		 * //Map타입을 상속받아서, HashMap타입의 오브젝트를 생성하는 방식. Map<String,Integer> mapTest = new
		 * HashMap<String, Integer>(); String ageValue = "40"; int ageValue2 = 40;
		 * mapTest.put("ageValue2", ageValue2); mapTest.put("age",
		 * Integer.parseInt(ageValue) );//제네릭타입을 사용하면, 여기처럼 parseInt형변환을 할 필요가 없기 때문에
		 * //제네릭타입의 근본목적은 데이터타입에대해서 명시적인 코딩을 해서 코드를 단순화 시키기 위해서...
		 * 
		 * Map<String, Object> paramMap = new HashMap<String, Object>();
		 * paramMap.put("user_id", "admin"); paramMap.put("user_name", "관리자");
		 * paramMap.put("age", 40); System.out.println("해시데이터타입 출력 " + paramMap);
		 * 
		 * //members 2차원배열 변수를 MemberVO 클래스형 오브젝트로 members_array 변경(아래) MemberVO
		 * members_input = new MemberVO(); members_input.setUser_id("admin");
		 * members_input.setUser_name("찐찐관리자"); members_input.setEmail("admin@abc.com");
		 * members_input.setEnabled(true);//enabled 데이터형(타입)이 boolean형 이기 때문에 true,
		 * false Date toDay = new Date();//자바의 Date클래스를 이용해서 현재 날짜(시간)을 가진 toDay변수를 생성.
		 * members_input.setReg_date(toDay);//reg_date 데이터타입이 Date형 이기 때문에 java의 날짜 데이터를
		 * 입력 members_input.setLevels("ROLE_ADMIN"); members_input.setPoint(10);//point
		 * 데이터타입이 Integer형 이기 때문에 숫자를 입력. // 위 members_input 오브젝트에는 1개의 라인(레코드)만 입력 되어
		 * 있어서, 이 오브젝트를 배열오브젝트에 저장(아래) MemberVO[] members_array = new MemberVO[2];//클래스형
		 * 배열 오브젝트 생성[2]는 배열의 크기=레코드갯수 입니다. members_array[0] = members_input;
		 * members_array[1] = members_input;
		 * //--------------------------------------------------------------------- //실제
		 * 코딩에서는 배열타입으로 보내지 않고, List타입(목록)으로 model이용해서 jsp로 보냅니다. List<MemberVO>
		 * members_list = Arrays.asList(members_array); //위에서 만든 members_array배열오브젝트를
		 * Arrays.asList메서드로 List타입으로 변경해서 jsp 보냅니다. //위에서 테이터타입연습으로 총 3가지 테이터 타입을 확인했음.
		 * System.out.println("List타입의 오브젝트 클래스내용을 출력 " + members_list.toString());
		 */
		List<MemberVO> members_list = memberService.selectMember(search_type,search_keyword);
		model.addAttribute("members", members_list);//members-2차원배열을 members_array클래스오브젝트로 변경
		return "admin/member/member_list";//member_list.jsp 로 members변수명으로 데이터를 전송
	}
	
	//bind:묶는다는 의미, /admin 요청URL경로와 admin/home.jsp를 묶는다는 의미.
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String admin() throws Exception {
		return "admin/home";//상대경로 파일위치
	}
	
}