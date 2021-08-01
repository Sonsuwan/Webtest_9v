<%@ page contentType="text/html; charset=euc-kr" %>
<%@ include file="color.jsp" %>
<html>
<head><title>메인이라네에</title>
<link href="style.css" rel="stylesheet" type="text/css">

<%
try{
	if(session.getAttribute("memId")==null){%>
	<!--  로그인이 되지 않았다면.  --> 
<script language="javascript">
function focusIt()
{
	document.inform.id.focus();
	<!-- 최초 커서의 위치를 어디다 둘지.-->
}
function checkIt()
{
	inputForm=eval("document.inform");
	if(!inputForm.id.value){
		alert("아이디를 입력하세요!");
		inputForm.id.focus();
		return false;
	}
	if(!inputForm.passwd.value){
		alert("비밀번호를 입력하세요!")
		inputForm.passwd.focus();
		return false;
	}
}
</script>
</head>
<body onLoad="focusIt();" bgcolor="<%=bodyback_c %>">
	<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
	<tr>
	<td width="300" bgcolor="<%=bodyback_c %>" height="20">
	&nbsp;
	</td>
	
	<form name="inform" method="post" action="loginPro.jsp" onSubmit="return checkIt();">
	
	<td bgcolor=<%=title_c %>" width="100" align=right">아이디</td>
	<td width="100" bgcolor="<%=value_c %>">
		<input type="text" name="id" size="15" maxlength="10"></td>
	</tr>
	<tr>
		<td rowspan="2" bgcolor="<%=bodyback_c %>" width="300">메인입니다!</td>
		<td bgcolor="<%=title_c %>" width="100" align="right">패스워드</td>
		<td width="100" bgcolor=<%=value_c %>">
			<input type="password" name="passwd" size="15" maxlength="10"></td>
		</tr>
		<tr>
		<td colspan="3" bgcolor="<%=title_c %>" align="center">
			<input type="submit" name="Submit" value="로그인">
			<input type="button" value="회원가입" onclick="javascript:window.location='inputForm.jsp'">
			</td></form></tr></table>
		<%}else{ %>
		<!--  로그인이 되면.  -->
		<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
		<tr>
		<td width="300" bgcolor="<%=bodyback_c %>" height="20">무야호</td>
		<td rowspan="3" bgcolor="<%=value_c %> align="center">
		<%=session.getAttribute("memId") %>님이 <br>
		방문하셨습니다.
		<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
		<input type="button" value="회원정보변경" onclick="javascript:window.location='modify.jsp'">
		</form>
		</td>
		</tr>
		<tr>
		<td rowspan="2" bgcolor="<%=bodyback_c %>" width="300"> 메인입니다.</td>
		</tr>
		</table>
		<br>
		
		<%} 
	} catch  (NullPointerException e){} %>
</body>
</html>