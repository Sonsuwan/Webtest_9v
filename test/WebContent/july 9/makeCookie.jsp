<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name",URLEncoder.encode("�ռ���","UTF-8"));
	response.addCookie(cookie);
	%>
<html>
<head><title> ��Ű ���� </title></head>
<body>
<%= cookie.getName() %> ��Ű�� �� = "<%= cookie.getValue() %>"
</body>
</html>