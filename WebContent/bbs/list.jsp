<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body topmargin=0 leftmargin=0 marginwidth="0" marginheight="0">

<!--주요내용시작 -->
<form name="ff2" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td valign="top">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
		  <td align="center" height="10"></td>
		</tr>
		<tr>
		  <td align="center"><u><b>게시판</b><u></td>
		</tr>
		<tr>
		  <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td>&nbsp;</td>
			  </tr>
			</table>
			<table width="556" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td height="2" bgcolor="#C3C3C3"></td>
			  </tr>
			  <tr>
				<td bgcolor="#E5E5E5">
				<table width="100%" border="0" cellspacing="1" cellpadding="2" style="">
					<tr>
					  <td height="20" align="center" bgcolor="#FFFFFF" width="56"><font color="#000000">번호</font></td>
					  <td height="20" align="center" bgcolor="#FFFFFF" width="270"><font color="#000000">제목</font></td>
					  <td height="20" align="center" bgcolor="#FFFFFF" width="80"><font color="#000000">글쓴이</font></td>
					  <td height="20" align="center" bgcolor="#FFFFFF" width="180"><font color="#000000">날짜</font></td>
					  <td height="20" align="center" bgcolor="#FFFFFF" width="50"><font color="#000000">조회수</font></td>
					</tr>
       <c:forEach var="vo" items="${vo }" >
					<tr>
						
						
                     <td bgcolor="#FFFFFF">${vo.seq}</td>
                     <td bgcolor="#FFFFFF">
                     <a href="view.inc?seq=${vo.seq }&nowPage=${nowpage}"> 
							${vo.title }
						</a>
                     </td>
					  <td bgcolor="#FFFFFF">${vo.writer }</td>
					  <td bgcolor="#FFFFFF">${vo.regdate }</td>
					  <td bgcolor="#FFFFFF">${vo.hit }</td>
					</tr>
       </c:forEach>
       <c:if test="${empty vo }">
				<tr>
				  <td bgcolor="#FFFFFF" colspan="5" height="70" align="center">등록된 게시물이 없습니다.</td>
				</tr>
       </c:if>
       
       		<td colspan="5" class="text13" style="background-color: #ffffff"><a
				href="http://localhost:8084/board2/bbs/list.inc?nowPage=${now-1 }">◀</a>
					<c:forEach var="x" begin="${start }" end="${end }" step="1">
																						&nbsp;
						<a
								href="http://localhost:8084/board2/bbs/list.inc?nowPage=${x}"><span
								id="${x}">${x}</span></a>&nbsp;
								</c:forEach><a
								href="http://localhost:8084/board2/bbs/list.inc?nowPage=${now+1 }">▶</a>&nbsp;</td>
       
				  </table></td>
				  
			  </tr>
			</table>
			<table width="556" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td height="20" valign="middle"><img src="/images/sub_it/point_line.gif" width="556" height="3"></td>
			  </tr>
			  <tr>
				<td align="right"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
					  <td width="315" align="left">
                          ${pageCode }
					  </td>
					  <td width="241" align="right"> <img src="images/but_write.gif" width="56" height="21" style="cursor:pointer" onClick="javascript:location.href='write.jsp'">
					  </td>
					</tr>
				  </table>
				  
				  </td>
			  </tr>
			</table></td>
		</tr>
		<tr>
		  <td height="19">&nbsp;</td>
		</tr>
	  </table>
	</td>
  </tr>
</table>
</form>

 <!--주요내용끝 -->

</body>
</html>