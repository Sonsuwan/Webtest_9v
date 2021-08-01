<%@ page contentType="text/html; charset=euc-kr" %>
<%
	Cookie cookie = new Cookie("oneh","1time");
	cookie.setMaxAge(60 * 60); // 60초 * 60분 
	response.addCookie(cookie);
	%>
<html>
<head><title>쿠키유효 시간설정</title></head>
<body>

유효 시간이 1시간인 oneh 쿠키 생성.

</body>
</html>