package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_BoardDAO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service //스프링빈으로 사용하기 위해서 애노테이션 명시
public class BoardServiceImpl implements IF_BoardService {

	@Inject //DAO클래스를 주입받아서 사용변수 생성
	private IF_BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> selectBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용코드(아래)
		return boardDAO.selectBoard(pageVO);
	}

	@Override
	public int countBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용코드(아래)
		return boardDAO.countBoard(pageVO);
	}
	
	//아래 메서드는 구현이 2개있는데, 조회수 업데이트처리 후 조회 에러발생시 업데이트한 조회수를 원상복귀 시키는 작업이 트랜잭션처리
	@Transactional //에러발생시 update부분이 롤백이 됩니다.
	@Override  
	public BoardVO readBoard(Integer bno) throws Exception {
		// bno번호에 해당하는 게시물 조회쿼리 DAO연결 + 해당게시물 조회수 업데이트
		boardDAO.updateViewCount(bno);
		return boardDAO.readBoard(bno);
	}

	@Override
	public List<String> readAttach(Integer bno) throws Exception {
		// bno번호에 해당하는 첨부파일 조회쿼리 DAO연결(아래)
		return boardDAO.readAttach(bno);
	}

	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		// 게시물 등록 DAO연결(아래)
		boardDAO.insertBoard(boardVO);
		
	}

	@Override
	public void deleteBoard(Integer bno) throws Exception {
		// 게시물 삭제 DAO연결(아래)
		boardDAO.deleteBoard(bno);
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		// 게시물 주정 DAO연결(아래)
		boardDAO.updateBoard(boardVO);
	}

}