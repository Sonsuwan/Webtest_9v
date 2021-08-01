<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie cookie1 = new Cookie("path1",
			URLEncoder.encode("���: /test/july 9/path1","UTF-8"));
	cookie1.setPath("/test/july 9/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2",
			URLEncoder.encode("���:","UTF-8"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3",
			URLEncoder.encode("���:/","UTF-8"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4",
			URLEncoder.encode("���: /july 9/path1" ,"UTF-8"));
	cookie4.setPath("/test/july 9/path2");
	response.addCookie(cookie4);
%>

<html>
<head><title>��Ű ��� ����</title></head>
<body>

������ ���� ��Ű�� �����߽��ϴ�.<br>

<%= cookie1.getName() %> = <%= cookie1.getValue() %>
[<%= cookie1.getPath() %>]
<br>
<%= cookie2.getName() %> = <%= cookie2.getValue() %>
[<%= cookie2.getPath() %>]
<br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %>
[<%= cookie3.getPath() %>]
<br>
<%= cookie4.getName() %> = <%= cookie4.getValue() %>
[<%= cookie4.getPath() %>]

</body>
</html>