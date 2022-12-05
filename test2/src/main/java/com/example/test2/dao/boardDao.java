package com.example.test2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test2.dto.boardDto;

@Mapper
public interface boardDao {
	
	public List<boardDto> boardList();
	public int writeAction(String board_title, String board_content, String board_name);
	public boardDto boardView(String board_idx);
	public int updateAction(String board_title, String board_content, String board_name, String board_idx);
	public int deleteAction(String board_idx);
}
