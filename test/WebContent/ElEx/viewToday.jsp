<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page session="false" %>
<%@ taglib prefix="elfunc" uri="/WEB-INF/el-fuctions.tld" %>
<%
	java.util.Date today = new java.util.Date();
	request.setAttribute("today", today);
%>
<html>
<head><title>EL 함수 호출</title></head>
<body>

오늘은 <b>${elfunc:dateFormat(today) }</b> 입니다.

</body>
</html>