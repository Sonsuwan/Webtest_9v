<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="proboard.service.ReadArticleService" %>
<%@ page import="proboard.service.ArticleNotFoundException" %>
<%@ page import="proboard.Article.Article" %>
<%
	int articleId = Integer.parseInt(request.getParameter("articleId"));
	String viewPage = null;
	try{
		Article article = ReadArticleService.getInsteance().readArticle(articleId);
		request.setAttribute("article", article);
		viewPage = "read_view.jsp";
	}catch(ArticleNotFoundException ex){
		viewPage ="article_not_found.jsp";
	}
%>
<jsp:forward page="read_view.jsp"></jsp:forward>