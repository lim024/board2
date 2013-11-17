package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import mybatis.vo.BoardVO;

import org.mybatis.spring.SqlSessionTemplate;

public class BoardDAO {
	private SqlSessionTemplate ss;

	public SqlSessionTemplate getSs() {
		return ss;
	}

	public void setSs(SqlSessionTemplate ss) {
		this.ss = ss;
	}
	
	//리스트
	public BoardVO[] getList(HashMap<String, Integer> map){
		BoardVO[] vo=null;
		List<BoardVO> list=ss.selectList("board.list",map);
		vo=new BoardVO[list.size()];
		list.toArray(vo);
		return vo;
		
	}
	
	//전체 게시물 수 반환

	public int getTotalCount(int status){
		
		List<BoardVO> list=ss.selectList("board.total",status);
		 
		return list.size();
		
	}
		
	//글쓰기
public void writebbs(BoardVO vo){
		
		ss.insert("board.write", vo);
	}

//뷰 페이지
public BoardVO getView(int param){
	BoardVO vo=null;
	
	vo=ss.selectOne("board.view", param);
	
	return vo;
}

//조회수
public void upHit(Map<String, String> map){
	ss.update("board.uphit", map);
}

//수정
public void modify(BoardVO vo){
	ss.update("board.modify", vo);
}


//삭제
public void delete(HashMap<String, String> map){
	ss.update("board.delete", map);
}



}
