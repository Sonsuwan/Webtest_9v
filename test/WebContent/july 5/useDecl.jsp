<!-- �޼��带 html���� �����ϰ� ������ ���� �ְ� multiplu()�޼��带 ȣ���ϸ� ����ο��ִ� �Ŀ� ���ԵǼ� ��������. -->
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