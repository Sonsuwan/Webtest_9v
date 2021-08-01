<!-- 캐릭터 셋을 잘못 지정하면 출력페이지에서 글자가 꺠진다. -->>
<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.util.Date" %>
<%
	Date now = new Date();
	%>
<html>
<head><title>Insert title here</title>
</head>
<body>
현재 시각:
<%= now %>
</body>
</html>