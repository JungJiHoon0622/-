package com.Finotek.dao;

import java.util.List;
import java.util.Map;

import com.Finotek.vo.BoardVO;
import com.Finotek.vo.Criteria;
import com.Finotek.vo.SearchCriteria;

public interface BoardDAO {
	
	// 게시글 작성
	public void write(BoardVO boardVO) throws Exception;
	
	// 게시물 목록 조회
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public BoardVO read(int bno) throws Exception;
	
	// 게시물 수정
	public void update(BoardVO boardVO) throws Exception;
	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
	public void insertFile(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
	
	// 첨부파일 다운
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
	
	// 게시판 조회수
		public void boardHit(int bno) throws Exception;
}
