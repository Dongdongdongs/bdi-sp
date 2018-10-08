package com.bdi.sp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdi.sp.dao.BoardDAO;
import com.bdi.sp.vo.BoardInfo;

@Controller
public class BoardInfoController {
	
	@Autowired
	private BoardDAO bdao;
	
	@RequestMapping(value="/board",method=RequestMethod.GET)
	public @ResponseBody List<BoardInfo> boardList(){
		return bdao.getBoardList(null);
	}
}
