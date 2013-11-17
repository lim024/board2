<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
html{
	font-size: 12px;
	text-decoration: none;
	
}



</style>

<script type="text/javascript">
function aa(){
	
	var v1=document.getElementById("a1").innerText;
	var v2=document.getElementById('a2').innerText;
	var v3=document.getElementById('a3').innerText;
	var v4=document.getElementById('a4').innerText;
	var v5=document.getElementById('a5').innerText;
	
	
	var q1=document.getElementById("v1").innerText;
	var q2=document.getElementById("v2").innerText;
	var q3=document.getElementById("v3").innerText;
	var q4=document.getElementById("v4").innerText;
	var q5=document.getElementById("v5").innerText;
	
	
	var vv1=v1.substring(0,4);
	var vv2=v2.substring(0,4);
	var vv3=v3.substring(0,4);
	var vv4=v4.substring(0,4);
	var vv5=v5.substring(0,4);
	
// 	document.getElementById('a1').innerHTML='<a href="http://localhost:8084/testing/bbs/list.inc" target="_blank" style="text-decoration: none; color: #5d5d5d; font-weight: bold;">'+vv1+'...'+'</a>';

document.getElementById('a1').innerHTML='<a href="http://localhost:8084/mainroot/bbsOnSpring.jsp" target="_parent" style="text-decoration: none; color: #5d5d5d; font-weight: bold;">'+vv1+'...'+'</a>';
	document.getElementById('a2').innerHTML='<a href="http://14.63.225.213/board2/bbs/miniboard.inc" target="_blank" style="text-decoration: none; color: #5d5d5d; font-weight: bold;">'+vv2+'...'+'</a>';
	document.getElementById('a3').innerHTML='<a href="http://14.63.225.213/board2/bbs/miniboard.inc" target="_blank" style="text-decoration: none; color: #5d5d5d; font-weight: bold;">'+vv3+'...'+'</a>';
	document.getElementById('a4').innerHTML='<a href="http://14.63.225.213/board2/bbs/miniboard.inc" target="_blank" style="text-decoration: none; color: #5d5d5d; font-weight: bold;">'+vv4+'...'+'</a>';
	document.getElementById('a5').innerHTML='<a href="http://14.63.225.213/board2/bbs/miniboard.inc" target="_blank" style="text-decoration: none; color: #5d5d5d; font-weight: bold;">'+vv5+'...'+'</a>';
	
	
	
	
	
	
	
}

</script>
</head>
<body>

<table width="100%">
<thead>
	<tr>
		<td align="left" style="background-image: url('img/minino.png'); width: 37px; height: 27px"></td>
		<td align="center" style="background-image: url('img/minititle.png'); background-repeat: no-repeat; background-position:center;  width: 57px; height: 27px"></td>
		<td style="background-image: url('img/miniwriter.png'); width: 59px; height: 27px"></td>
	
	</tr>

</thead>

<tbody>

<c:forEach var="v" items="${vo }" varStatus="status">
<tr id="ov">
	
	<td align="ce" id="v${status.count }" style="text-decoration: none; color: #5d5d5d; font-weight: bold; cursor: pointer;">${v.seq }</td>
	<td align="center" >
	<div id="a${status.count}">${v.title }</div></td>
	<td style="text-decoration: none; color: #5d5d5d; font-weight: bold; cursor: pointer;">${v.writer } </td>

</tr>

</c:forEach>


</tbody>
</table>
<script type="text/javascript">
setTimeout("aa()", 100);



</script>

</body>
</html>