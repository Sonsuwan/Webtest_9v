<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if (id.equals(password)){
	session.setAttribute("MEMBERID",id);%>
<html>
<head><title> �α��� ����</title></head>
<body>
�α��ο� �����߾��.

</body>
</html>
<%
} else {
%>
<script>
alert("�α��ο� �����߾��.");
history.go(-1);</script>
<% } %>