<%@ page contentType="text/html; charset=euc-kr" %>
<% 
	String id = request.getParameter("memberId");
	if (id.equals("era13")){
	response.sendRedirect("index.jsp");
	} else {%>
<html>
<head><title> 로그인에 실패</title></head>
<body>
 아이디가 era13이 아닙니다.
</body>
</html>
<% } %>