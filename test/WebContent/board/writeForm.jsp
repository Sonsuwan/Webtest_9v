<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import = "Mr.*" %>
<%@ include file="./color.jsp"%>
<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<%
  int num=0,ref=1,re_step=0,re_level=0;
  LogonDataBean c = null;
  if(session.getAttribute("memId")!=null){ 
  	String id = (String)session.getAttribute("memId");
  	LogonDBBean m = LogonDBBean.getInstance();
  	c = m.getMember(id);
  }
  //���� �۾��� ����
  try{ 
	//�亯�� �Է��̶��....
    if(request.getParameter("num")!=null){
		num=Integer.parseInt(request.getParameter("num"));
		ref=Integer.parseInt(request.getParameter("ref"));
		re_step=Integer.parseInt(request.getParameter("re_step"));
		re_level=Integer.parseInt(request.getParameter("re_level"));
	}
    
    
%>
  
<body bgcolor="<%=bodyback_c%>"> 
<center><b>�۾���</b>
<br>
<form method="post" name="writeform" action="writePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level%>">

<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="<%=bodyback_c%>"
   align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="<%=value_c%>">
    <a href="list2.jsp"> �۸��</a>
   </td>
   </tr>
   <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center">�� ��</td>
    <td  width="330"> 
    <%
	if(session.getAttribute("memId")!=null){	
	%> 
       <input type="text" size="10" maxlength="10" name="writer" value="<%=c.getName() %>">
    <% }else{ %>
       <input type="text" size="10" maxlength="10" name="writer">
    <%} %>      
    </td>
    
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >�� ��</td>
    <td  width="330">
    <%if(request.getParameter("num")==null){%>
       <input type="text" size="40" maxlength="50" name="subject"></td>
	<%}else{%>
	   <input type="text" size="40" maxlength="50" name="subject" value="[�亯]"></td>
	<%}%>
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center">Email</td>
    <td  width="330">
    <%
	if(session.getAttribute("memId")!=null){	
	%>
       <input type="text" size="40" maxlength="30" name="email" value="<%=c.getEmail() %>">
    <% }else{ %>
       <input type="text" size="40" maxlength="30" name="email">
    <%} %>
    </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >�� ��</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="<%=value_c%>" align="center" >��й�ȣ</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd">
</td>
  </tr>
<tr>     
<td colspan=2 bgcolor="<%=value_c%>" align="center">
  <input type="submit" value="�۾���" > 
  <input type="reset" value="�ٽ��ۼ�">
  <input type="button" value="��Ϻ���" OnClick="window.location='list.jsp'">
</td></tr></table>   
<%
  }catch(Exception e){}
%>    
</form>     
</body>
</html>  