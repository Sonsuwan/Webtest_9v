<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<html>
<head><title>ȸ�� ���</title></head>
<body>

MEMBER ���̺��� ����
<table width="100%" border="1">
<tr>
	<td>�̸�</td><td>���̵�</td><td>�̸���</td><td>����</td>
	</tr>
	<%// JDBC ����̹��ε�
		//Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver="jdbc:oracle:thin:@localhost:1522:XE";
		String dbUser="scott";
		String dbPass="tiger";
		
		String query = "select * from MEMBER order by MEMBERID";
		// ������ ���̽� Ŀ�ؼ� ����
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		// Statement ����
		stmt = conn.createStatement();
		// ���� ����
		rs = stmt.executeQuery(query);
		// ���� ������ ���
		while(rs.next()){
	%>
	<tr>
	
	<td><%= rs.getString("NAME") %></td>
	<td><a href="viewMember.jsp?memberID=<%=rs.getString("MEMBERID")%>">
   <%= rs.getString("MEMBERID") %></a></td>
	<td><%= rs.getString("EMAIL") %></td>
	<td><a href="<%= request.getContextPath() %>/Son/delete.jsp?memberID=<%= rs.getString("MEMBERID")%>">����</a>
	</td>
	</tr>
	<%
		}
	} catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		// ����� Statement ����
		if(rs != null) try { rs.close();} catch(SQLException ex) {}
		if(stmt != null) try { stmt.close();} catch(SQLException ex) {}
		if(conn != null) try { conn.close();} catch(SQLException ex) {}
	}
	%>
	
	</table>
</body>
</html>