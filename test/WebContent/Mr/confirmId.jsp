<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "Mr.LogonDBBean" %>
<%@ include file="color.jsp" %>
<html>
<head><title>Insert title here</title>
<ling href="style.css" rel="stylesheet" type="text/css">

<% request.setCharacterEncoding("UTF-8"); %>

<%
	String id = request.getParameter("id");
LogonDBBean manager = LogonDBBean.getIstance();
int check = manager.confirmId(id);
%>

</head>
<body bgcolor="<%=bodyback_c %>">
<%
	if(check == 1){%>
	<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr gbcolor="<%= title_c %>">
	<td height="39"><%=id %> �̹� ������� ���̵��Դϴ�.</td>
	</tr>
	<form name="chechForm" method="post" action="confirmId.jsp">
	<tr>
	<td bgcolor="<%=value_c %>" align="center">
	<p>�ٸ� ���̵� �����ϼ���.</p>
	<input type="text" size="10" maxlength="12" name="id">
	<input type="submit" value="ID�ߺ�Ȯ��">
	</td>
	</tr>
	</table>
	</form>
	<%} else { %>
	<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr bgcolor="<%= title_c %>">
	<td align="center">
	<p> �Է��Ͻ� <%=id %>�� ����ϽǼ� �ִ� id �Դϴ�.</p>	
	<input type="button" value="�ݱ�" onclick="setid()">
	</td>
	</tr>
	</table>
<%
}
%>
</body>
</html>
<script language="javascript">

  function setid()
    {
    opener.document.userinput.id.value="<%=id%>";
self.close();
}

</script>