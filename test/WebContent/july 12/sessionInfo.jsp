<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page session = 'true' %> <!-- �⺻���� true�� �������� -->
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!-- sesiion.setMaxInactiveInterval(60*60); �� ��ȿ�ð� ��������(�⺻��ȿ 1�ð�) -->
<%
	Date time = new Date();
	SimpleDateFormat formatter =
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	%>
<html>
<head><title>Insert title here</title></head>
<body>
���� ID : <%= session.getId() %><br>
<%
	time.setTime(session.getCreationTime());%>
���ǻ����ð� : <%= formatter.format(time) %> <br>
<%
	time.setTime(session.getLastAccessedTime());%>
�ֱ����ٽð� : <%= formatter.format(time) %>
</body>
</html>