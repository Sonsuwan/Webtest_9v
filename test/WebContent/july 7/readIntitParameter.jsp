<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>Insert title here</title></head>
<body>

�ʱ�ȭ �Ķ���� ���:
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