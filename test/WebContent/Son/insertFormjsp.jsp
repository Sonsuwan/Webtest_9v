<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>Insert title here</title></head>
<body>

<form action="./insert.jsp" method="post">
<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="memberID" size="10"></td>
	<td>암호</td>
	<td><input typue="text" name="password" size="10"></td>
	</tr>
	<tr>
	<td>이름</td>
	<td><input type="text" name="name" size="10"> </td>
	<td>이메일</td>
	<td><input type="text" name="email" size="10"></td>
	</tr>
	<tr>
	<td colspan="4"><input type="submit" value="삽입"></td>
	</tr>
</table>
</form> 
</body>
</html>