<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "Mr.LogonDBBean" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean manager = LogonDBBean.getInstance();
	int check = manager.userCheck(id, passwd);
	if(check==1){
		session.setAttribute("memId", id);
		response.sendRedirect("main.jsp");
	} else if (check==0){ %>
	<script> alert("��й�ȣ�� ���� �ʽ��ϴ�.")
		history.go(-1);</script>
	<% }else{ %>
	<script> alert("���̵� ���� �ʽ��ϴ�.")
		history.go(-1);</script>
	<% } %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>