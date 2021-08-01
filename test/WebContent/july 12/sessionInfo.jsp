<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page session = 'true' %> <!-- 기본값이 true라 생략가능 -->
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!-- sesiion.setMaxInactiveInterval(60*60); 로 유효시간 지정가능(기본유효 1시간) -->
<%
	Date time = new Date();
	SimpleDateFormat formatter =
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	%>
<html>
<head><title>Insert title here</title></head>
<body>
세션 ID : <%= session.getId() %><br>
<%
	time.setTime(session.getCreationTime());%>
세션생성시간 : <%= formatter.format(time) %> <br>
<%
	time.setTime(session.getLastAccessedTime());%>
최근접근시간 : <%= formatter.format(time) %>
</body>
</html>