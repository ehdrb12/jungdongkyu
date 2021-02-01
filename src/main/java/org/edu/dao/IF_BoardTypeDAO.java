package org.edu.dao;

import java.util.List;

import org.edu.vo.BoardTypeVO;

public interface IF_BoardTypeDAO {
	public List<BoardTypeVO> select_board_type() throws Exception;
	public BoardTypeVO view_board_type(String board_type) throws Exception;
	public void update_board_type(BoardTypeVO boardTypeVO) throws Exception;
	public void insert_board_type(BoardTypeVO boardTypeVO) throws Exception;
	public void delete_board_type(String board_type) throws Exception;
}
