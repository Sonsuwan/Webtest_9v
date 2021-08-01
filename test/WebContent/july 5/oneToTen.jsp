<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title> 1-10 까지의 합</title></head>
<body>
<%
	int sum = 0;
	for(int i=1; i<= 10; i++){
	sum = sum + i;}
	%>
	1부터 10 까지의 합은 <%=sum %> 입니다.
</body>
</html>