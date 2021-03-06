<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<html>
<head><title>회원 목록</title></head>
<body>

MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td><td>삭제</td>
	</tr>
	<%// JDBC 드라이버로딩
		//Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver="jdbc:oracle:thin:@localhost:1522:XE";
		String dbUser="scott";
		String dbPass="tiger";
		
		String query = "select * from MEMBER order by MEMBERID";
		// 데이터 베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		// Statement 생성
		stmt = conn.createStatement();
		// 쿼리 실행
		rs = stmt.executeQuery(query);
		// 쿼리 실행결과 출력
		while(rs.next()){
	%>
	<tr>
	
	<td><%= rs.getString("NAME") %></td>
	<td><a href="viewMember.jsp?memberID=<%=rs.getString("MEMBERID")%>">
   <%= rs.getString("MEMBERID") %></a></td>
	<td><%= rs.getString("EMAIL") %></td>
	<td><a href="<%= request.getContextPath() %>/Son/delete.jsp?memberID=<%= rs.getString("MEMBERID")%>">삭제</a>
	</td>
	</tr>
	<%
		}
	} catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		// 사용한 Statement 종료
		if(rs != null) try { rs.close();} catch(SQLException ex) {}
		if(stmt != null) try { stmt.close();} catch(SQLException ex) {}
		if(conn != null) try { conn.close();} catch(SQLException ex) {}
	}
	%>
	
	</table>
</body>
</html>