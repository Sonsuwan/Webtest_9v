<%@ page contentType="text/html; charset=euc-kr" %>
<% 
	String id = request.getParameter("memberId");
	if (id.equals("era13")){
	response.sendRedirect("index.jsp");
	} else {%>
<html>
<head><title> �α��ο� ����</title></head>
<body>
 ���̵� era13�� �ƴմϴ�.
</body>
</html>
<% } %>