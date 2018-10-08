package com.bdi.sp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bdi.sp.dao.BoardDAO;
import com.bdi.sp.vo.BoardInfo;

public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession ss;
	
	@Override
	public List<BoardInfo> getBoardList(BoardInfo bif) {
		// TODO Auto-generated method stub
		return ss.selectList("SQL.BOARDINFO.selectBoardInfo");
	}

	@Override
	public int deleteBoard(int binum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(BoardInfo bif) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardInfo getBoard(int binum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertBoard(BoardInfo bifs) {
		// TODO Auto-generated method stub
		return null;
	}

}
