<!--  선언부 안에서 다른형태,여러종류의 메소드 선언 가능 -->
<%@ page contentType="text/html; charset=euc-kr" %>
<%!
	public int add(int a, int b){
	int c = a + b;
	return c;}
	
	public int subtract(int a, int b){
	int c = a - b;
	return c;}%>
	
<html>
<head><title>Insert title here</title></head>
<body>
<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);%>
	
	<%= value1 %> + <%= value2 %> = <%= addResult %>
	<br>
	<%= value1 %> + <%= value2 %> = <%= subtractResult %>
	
</body>
</html>