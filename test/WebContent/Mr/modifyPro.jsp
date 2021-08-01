<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "Mr.LogonDBBean" %>
<%@ include file="color.jsp" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="Mr.LogonDataBean">
	<jsp:setProperty name="member" property="*"/>
	</jsp:useBean>
	
<%
	String id = (String)session.getAttribute("memId");
member.setId(id);

LogonDBBean manager = LogonDBBean.getInstance();
	manager.updateMember(member);
%>
<link href="style.css" rel="stylesheet" type="text/css">
<html>
<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
<tr bgcolor=<%=title_c %>">
<td height="39" align="center">
<font size="+1"><b>회원정보가 수정되었습니다.</b></font></td></tr>
<tr>
<Td bgcolor="<%=value_c %>" align="center">
<p> 입력하신 내용이 수정되었습니다.</p>
</Td>
</tr>
<tr>
<td bgcolor=<%=value_c %>" align="center">
<form>
<input type="button" value="메인으로" onclick="window.location='main.jsp'"></form>
잠시 후 메인으로 이동합니다.
<meta http-equiv="Refresh" content="5; url=main.jsp">
</td>
</tr>
</table>
</html>