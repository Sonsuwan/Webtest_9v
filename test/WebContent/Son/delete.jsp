<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import ="java.sql.DriverManager" %> 
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.SQLException" %>

<html>
<head><title>ȸ�� ���� ����</title></head>
<body>
ȸ�������� �����Ǿ����ϴ�.
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	String memberID= request.getParameter("memberID");
	
	try {
		String jdbcDriver="jdbc:oracle:thin:@localhost:1522:XE";
		String dbUser="scott";
		String dbPass="tiger";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement(
				"delete from MEMBER where memberID=?");
		pstmt.setString(1, memberID);
		pstmt.executeUpdate();
		
	}finally{
		if(pstmt != null) try { pstmt.close();} catch(SQLException ex) {}
		if(conn != null) try{ conn.close();} catch(SQLException ex) {}
	}
%>
</body>
</html>