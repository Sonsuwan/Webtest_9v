<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if (id.equals(password)){
	session.setAttribute("MEMBERID",id);%>
<html>
<head><title> 로그인 성공</title></head>
<body>
로그인에 성공했어요.

</body>
</html>
<%
} else {
%>
<script>
alert("로그인에 실패했어요.");
history.go(-1);</script>
<% } %>