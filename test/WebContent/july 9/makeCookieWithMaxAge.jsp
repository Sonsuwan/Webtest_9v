<%@ page contentType="text/html; charset=euc-kr" %>
<%
	Cookie cookie = new Cookie("oneh","1time");
	cookie.setMaxAge(60 * 60); // 60�� * 60�� 
	response.addCookie(cookie);
	%>
<html>
<head><title>��Ű��ȿ �ð�����</title></head>
<body>

��ȿ �ð��� 1�ð��� oneh ��Ű ����.

</body>
</html>