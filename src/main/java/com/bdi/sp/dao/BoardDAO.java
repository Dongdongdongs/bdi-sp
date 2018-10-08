package com.bdi.sp.dao;

import java.util.List;

import com.bdi.sp.vo.BoardInfo;

public interface BoardDAO {
	
	public List<BoardInfo> getBoardList(BoardInfo bif);
	
	public int deleteBoard(int binum);
	
	public int updateBoard(BoardInfo bif);
	
	public BoardInfo getBoard(int binum);
	
	public String insertBoard(BoardInfo bifs);
}
