<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie cookie1 = new Cookie("path1",
			URLEncoder.encode("경로: /test/july 9/path1","UTF-8"));
	cookie1.setPath("/test/july 9/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2",
			URLEncoder.encode("경로:","UTF-8"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3",
			URLEncoder.encode("경로:/","UTF-8"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4",
			URLEncoder.encode("경로: /july 9/path1" ,"UTF-8"));
	cookie4.setPath("/test/july 9/path2");
	response.addCookie(cookie4);
%>

<html>
<head><title>쿠키 경로 지정</title></head>
<body>

다음과 같이 쿠키를 생성했습니다.<br>

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