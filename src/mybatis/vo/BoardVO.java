package mybatis.vo;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
public String seq,	writer,	title,content,pwd,hit,bname,regdate,
	ip,status,uploadFilename,path;



public String getPath() {
	return path;
}

public void setPath(String path) {
	this.path = path;
}

public String getSeq() {
	return seq;
}

public void setSeq(String seq) {
	this.seq = seq;
}

public String getWriter() {
	return writer;
}

public void setWriter(String writer) {
	this.writer = writer;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public String getPwd() {
	return pwd;
}

public void setPwd(String pwd) {
	this.pwd = pwd;
}

public String getHit() {
	return hit;
}

public void setHit(String hit) {
	this.hit = hit;
}

public String getBname() {
	return bname;
}

public void setBname(String bname) {
	this.bname = bname;
}

public String getRegdate() {
	return regdate;
}

public void setRegdate(String regdate) {
	this.regdate = regdate;
}

public String getIp() {
	return ip;
}

public void setIp(String ip) {
	this.ip = ip;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public String getUploadFilename() {
	return uploadFilename;
}

public void setUploadFilename(String uploadFilename) {
	this.uploadFilename = uploadFilename;
}
	public MultipartFile file;



	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
