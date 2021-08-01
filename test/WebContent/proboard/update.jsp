<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="proboard.service.UpdateArticleService" %>
<%@ page import="proboard.Article.Article" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="updateRequest"
	class="proboard.Model.UpdateRequest" />
	<jsp:setProperty name="updateRequest" property="*" />
	<%
		String viewPage = null;
		try{
			Article article =
					UpdateArticleService.getInstance().update(updateRequest);
			request.setAttribute("updatedArticle", article);
			viewPage = "update_success.jsp";
		}catch(Exception ex){
			request.setAttribute("updateException", ex);
			viewPage = "update_error.jsp";
		}
	%>
	<jsp:forward page="<%= viewPage %>" />