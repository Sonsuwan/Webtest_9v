package proboard.service;

import java.sql.Connection;
import java.sql.SQLException;
import proboard.dao.ArticleDao;
import proboard.Article.Article;
import loader.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class ReadArticleService {
	private static ReadArticleService instance = new ReadArticleService();
	public static ReadArticleService getInsteance() {
		return instance;
	}
	
	private ReadArticleService() {
	}
	
		public Article readArticle(int articleId) throws ArticleNotFoundException{
			return selectArticle(articleId, true);}
		
	private Article selectArticle(int articleId,boolean increaseCount)
	throws ArticleNotFoundException{
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ArticleDao articleDao = ArticleDao.getInstance();
			Article article = articleDao.selectById(conn, articleId);
			if(article == null) {
				throw new ArticleNotFoundException(
						"게시글이 존재하지 않습니다 : " + articleId);
			}
			if(increaseCount) {
				articleDao.increaseReadCount(conn, articleId);
				article.setReadCount(article.getReadCount() + 1);
			}
			return article;
		}catch(SQLException e) {
			throw new RuntimeException("DB 에러 발생 : " + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	public Article getArticle(int articleId) throws ArticleNotFoundException{
		return selectArticle(articleId, false);
	}
}
