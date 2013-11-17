package spring.control;

import java.io.File;




import java.sql.Date;
import java.util.Calendar;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;








import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import mybatis.vo.BoardVO;



@Controller
public class WriteControl {
	
	
//컨텐트의 자료형이 blob였는데 이게 한글입력을 못받아 읽는다. 중요~
	
	@Autowired
	mybatis.dao.BoardDAO bdao;


	public mybatis.dao.BoardDAO getBdao() {
		return bdao;
	}

	public void setBdao(mybatis.dao.BoardDAO bdao) {
		this.bdao = bdao;
	}
	@Autowired
	ServletContext servletContext;

	@Autowired
	HttpServletRequest request;

	private String uploadPath;
			
	public void setUploadPath(String n) {
		uploadPath = n;
	}
	File ff;
	
	public File getFf() {
		return ff;
	}

	public void setFf(File ff) {
		this.ff = ff;
	}


	@RequestMapping(value="bbs/write.inc", method=RequestMethod.POST)
	public ModelAndView write(BoardVO vo)throws Exception{
		
//		MultipartFile uploadFile = vo.getFile();//첨부파일
		
		Date date=new Date(System.currentTimeMillis());
		String reg=date.toString();
		
//		
//		
//		
//		
//		if(vo != null && uploadFile.getSize() != 0){
//			
//			String path = servletContext.getRealPath(uploadPath);
//			
//			String filename = uploadFile.getOriginalFilename();			
//			vo.setPath(path+"/"+filename);
//			
//			ff=new File(path+"/"+filename);
//			// 파일 저장
//			uploadFile.transferTo(ff);
//			
//			vo.setUploadFilename(filename);// 파일명 지정
//			
//}else if(uploadFile.getSize()==0){
//			
//		}
	
		
		vo.setHit("0");
		vo.setBname("BBS");
		vo.setRegdate(reg);
		vo.setStatus("1");
		String ip = request.getRemoteAddr();
		vo.setIp(ip);
		
		
		// DB에 저장
		bdao.writebbs(vo);
		
		// 뷰설정
		ModelAndView mv = new ModelAndView();
		// Redirect방식으로 이동시키기
		
		
		mv.setViewName("redirect:/bbs/list.inc");
		

		
		return mv;
	}
}
	
	
