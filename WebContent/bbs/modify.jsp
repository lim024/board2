<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(ff){
		//유효성 검사
		
		ff.submit();
	}
</script>

<%
	String writer = request.getParameter("writer");
String title = request.getParameter("title");
String content = request.getParameter("content");
String pwd = request.getParameter("pwd");
String seq = request.getParameter("seq");
%>
</head>
<body>

	<form action="modify.inc" method="post" >
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="center" height="10"></td>
        </tr>
        <tr>
          <td align="center"><u><b>수정</b></u></td>
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
                <td bgcolor="#E5E5E5"><table width="100%" border="0" cellspacing="1" cellpadding="2">
                <tr>
                <td><input type="hidden" value="<%=seq%>" name="seq"/></td>
                
                </tr>

                    <tr>
                      <td width="90" height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">작성자</font></td>
                      <td bgcolor="#F2F7F9" align="left"> <input type="text" value="<%=writer%>" name="writer"/></td>
                    </tr>

                    <tr>
                      <td height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">제목</font></td>
                      <td bgcolor="#F2F7F9" align="left"><input type="text" value="<%=title%>" name="title"></td>
                    </tr>
                    <tr>
                      <td height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">내용</font></td>
                      <td bgcolor="#F2F7F9" align="left"> <input type="text" value="<%=content%>" name="content"></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                      <td height="20" align="center" bgcolor="#669AB3"><font color="#FFFFFF">비밀번호</font></td>
                      <td bgcolor="#F2F7F9" align="left"> <input type="password" value="<%=pwd%>" name="pwd">
                        <font color="#0066CC">* 삭제.수정시 필요</font> </td>
                    </tr>
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
                      <td width="315" align="center">
                        
                      </td>
                      <td width="241" align="right">
                      <input type="button" onclick="check(this.form)" value="보내기"/>
                      <input type="reset" value="재입력"/>
                      </td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="19"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
	</form>
</body>
</html>
