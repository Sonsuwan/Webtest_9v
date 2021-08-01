<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="Mr.LogonDBBean" %>
<%@ page import ="java.sql.Timestamp" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="Mr.LogonDataBean">
<jsp:setProperty name="member" property="*" />
</jsp:useBean>
<%
    member.setReg_date(new Timestamp(System.currentTimeMillis()) );
    LogonDBBean manager = LogonDBBean.getInstance();
    manager.insertMember(member);

    response.sendRedirect("loginForm.jsp");
%>