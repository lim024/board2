

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	function check() {
		document.ff.submit();
	}
</script>

</head>
<body>
<table width="556" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
		    <td align="center"><u><b>BBS 내용보기</b><u></td>
		  </tr>
		  <tr>
			<td height="2" bgcolor="#C3C3C3"></td>
		  </tr>
		  <tr>
			<td valign="top" bgcolor="#E5E5E5">
			

			<table width="100%" border="0" cellspacing="1" cellpadding="3">
				<tr>
				  <td width="80" height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">글쓴이</font></td>
                  <td bgcolor="#F2F7F9">${vo.writer}</td>
				  <td width="80" align="center" bgcolor="#669AB3"><font color="#FFFFFF">등록일</font></td>
				  <td width="150" align="center" bgcolor="#F2F7F9">${vo.regdate}</td>
				</tr>
				<tr>
				  <td height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">ip</font></td>
				  <td bgcolor="#F2F7F9">${vo.ip }</td>
				  <td align="center" bgcolor="#669AB3"><font color="#FFFFFF">조회수</font></td>
				  <td align="center" bgcolor="#F2F7F9">${vo.hit}</td>
				</tr>
				
				<tr>
				  <td height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">제목</font></td>
				  <td colspan="3" bgcolor="#F2F7F9">${vo.title}</td>
				</tr>
				<tr valign="top">
				  <td height="23" colspan="4" bgcolor="#FFFFFF">
					<table width="100%" border="0" cellspacing="0" cellpadding="15">
					  <tr>
						<td valign="top"> <pre>${vo.content}</pre>
						  <p>&nbsp;</p></td>
					  </tr>
<!-- 					 <tr> -->
<!-- 				  <td height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">첨부파일</font></td> -->
<!-- 				  <td colspan="3" bgcolor="#F2F7F9"> -->
<%-- 				  <a href="javascript:download('${vo.uploadFilename}')"> --%>
<%-- 				  	${vo.uploadFilename} --%>
<!-- 				  </a> -->
<!-- 				  </td> -->
<!-- 				</tr> -->
					</table></td>
				</tr>
			  </table>
			</td>
		  </tr>
		</table>
		<table width="556" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td height="20" valign="middle"><img src="/images/sub_it/point_line.gif" width="556" height="3"></td>
		  </tr>
		  <tr>
			<td align="right"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
				  <td align="left">
					&nbsp;
				  </td>
				  <td width="241" align="right"><img src="images/button/but_answer.gif" width="56" height="21" onClick="JavaScript:location.href='answer.inc?seq=${seq}&nowPage=${nowPage }'" style="cursor:pointer">
					<img src="images/button/but_modify.gif" width="56" height="21" onClick="check()" style="cursor:pointer">
					<img src="images/button/but_list.gif" width="56" height="21" onClick="JavaScript:location.href='list.inc?nowPage=${nowPage}'" style="cursor:pointer">

					<img src="images/button/but_undel.gif" width="56" height="21">

					</td>
				</tr>
			  </table></td>
		  </tr>
		  <tr>
			<td height="19">&nbsp;</td>
		  </tr>

			  

		</table>
		<iframe id="check_f" border='0' width="0" height="0" frameborder='0' marginwidth='0' marginheight='0' scrolling="no"></iframe>
		</td>
	</tr>
	<tr>
	  <td height="19">&nbsp;</td>
	</tr>
  </table>
  	<form action="modify.jsp"method="post" name="ff">
  	<input type="hidden" value="${vo.title }" name="title">
  	<input type="hidden" value="${vo.content }" name="content">
  	<input type="hidden" value="${vo.writer }" name="writer">
  	<input type="hidden" value="${vo.pwd }" name="pwd">
  	<input type="hidden" value="${vo.seq }" name="seq">
  	</form>
  </body>
  </html>
