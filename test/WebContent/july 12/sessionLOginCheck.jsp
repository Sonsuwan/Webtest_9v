<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String memberid = (String)session.getAttribute("MEMBERID");
	boolean login = memberid == null ? false : true;%>
<html>
<head><title>�α��� ���� �˻�</title></head>
<body>

<%
	if(login){%>
	���̵� "<%= memberid %>"�� �α����� ����
	<%}else{ %>
	�α������� ���� ����
	<%} %>
</body>
</html>