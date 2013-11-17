package spring.control;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import mybatis.dao.BoardDAO;
import mybatis.vo.BoardVO;

public class ModifyControl implements Controller {

	
	BoardDAO bdao;
	
	BoardVO vo;

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
			String writer = request.getParameter("writer");
			String ip = request.getRemoteAddr();
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String pwd = request.getParameter("pwd");
			String seq = request.getParameter("seq");
			String nowPage=request.getParameter("nowPage");
			vo=new BoardVO();
			System.out.println(writer+title+seq+nowPage);
			
			vo.setWriter(writer);
			vo.setIp(ip);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setPwd(pwd);
			
			vo.setSeq(seq);
		
			
			bdao.modify(vo);
			ModelAndView mv = new ModelAndView();
			//mv.addObject("nowPage", nowPage);
			mv.setViewName("redirect:/bbs/view.inc?seq="+seq+ "&" +"nowPage="+1 );
			
			return mv;
		
		
	}
}
