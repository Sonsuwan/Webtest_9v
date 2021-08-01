<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page buffer="8kb" autoFlush="false" %>
<html>
<head><title>Insert title here</title></head>
<body>

버퍼 크기 : <%= out.getBufferSize() %> <br>
남은 크기 : <%= out.getRemaining() %> <br>
auto flush : <%= out.isAutoFlush() %> <br>

</body>
</html>