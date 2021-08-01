<!-- 메서드를 html전에 선언하고 본문에 값을 넣고 multiplu()메서드를 호출하면 선언부에있는 식에 대입되서 리턴해줌. -->
<%@ page contentType="text/html; charset=euc-kr" %>
<%!
	public int multiply(int a, int b){
	int c = a*b;
	return c;}%>

<html>
<head><title>Insert title here</title></head>
<body>
10*25 = <%=multiply(10,25) %>
</body>
</html>