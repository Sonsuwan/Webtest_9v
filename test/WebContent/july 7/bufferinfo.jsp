<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page buffer="8kb" autoFlush="false" %>
<html>
<head><title>Insert title here</title></head>
<body>

���� ũ�� : <%= out.getBufferSize() %> <br>
���� ũ�� : <%= out.getRemaining() %> <br>
auto flush : <%= out.isAutoFlush() %> <br>

</body>
</html>