<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String memberid = (String)session.getAttribute("MEMBERID");
	boolean login = memberid == null ? false : true;%>
<html>
<head><title>로그인 여부 검사</title></head>
<body>

<%
	if(login){%>
	아이디 "<%= memberid %>"로 로그인한 상태
	<%}else{ %>
	로그인하지 않은 상태
	<%} %>
</body>
</html>