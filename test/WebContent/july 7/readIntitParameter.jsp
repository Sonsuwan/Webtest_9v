<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>Insert title here</title></head>
<body>

초기화 파라미터 목록:
<ul>
<%
	Enumeration initParamEnum = application.getInitParameterNames();
	while (initParamEnum.hasMoreElements()){
		String initParamName = (String)initParamEnum.nextElement();
%>
<li> <%= initParamName %> =
	 <%= application.getInitParameter(initParamName) %>
	 <% } %>
</ul>
</body>
</html>