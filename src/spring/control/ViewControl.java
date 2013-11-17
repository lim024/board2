package spring.control ;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import mybatis.dao.BoardDAO;
import mybatis.vo.BoardVO;

public class ViewControl implements Controller {
	
	
	public BoardDAO bdao;
	
	public BoardVO vo;

	public BoardDAO getBdao() {
		return bdao;
	}

	public void setBdao(BoardDAO bdao) {
		this.bdao = bdao;
	}

	public BoardVO getVo() {
		return vo;
	}

	public void setVo(BoardVO vo) {
		this.vo = vo;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String seqparam=request.getParameter("seq");
		String nowPage=request.getParameter("nowPage");
		
		
		int seq=Integer.parseInt(seqparam);
		
		vo=bdao.getView(seq);
		int hit = 1+(Integer.valueOf(vo.getHit()));
		HashMap<String, String> map = new HashMap<>();
		
		map.put("seq", vo.getSeq());
		map.put("hit", String.valueOf(hit));
		
		bdao.upHit(map);
		ModelAndView mv=new ModelAndView();
		mv.addObject("vo", vo);
		
		mv.addObject("nowPage", nowPage);
		
		
	
		mv.setViewName("bbs/view");
		return mv;
	}

}
