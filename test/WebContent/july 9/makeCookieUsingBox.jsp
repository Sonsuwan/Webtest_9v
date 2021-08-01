<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="util.CookieBox" %>
<%
	response.addCookie(CookieBox.createCookie("name","손수완"));
	response.addCookie(
			CookieBox.createCookie("id","naver","/july 9",-1));
	%>
<html>
<head><title>CookieBox 사용예</title></head>
<body>

CookieBox 를 사용하여 쿠키생성

</body>
</html>
