<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import="member.MemberInfo" %>   

<jsp:useBean id="member" scope="request" class="member.MemberInfo" />

 
<%
	//MemberInfo member = new MemberInfo();
	member.setId("ssy");
	member.setName("��");
	member.setPassword("1234");
	member.setAddress("�սʸ�");
	member.setEmail("aba@daum.net");
	//request.setAttribute("member", member);
%>
<jsp:forward page="./useObject.jsp" />













