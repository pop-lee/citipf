package com.citipf.liyunpeng.dao.iBatis;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import org.springframework.util.Assert;
import org.springframework.dao.support.DaoSupport;
//import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

public abstract class IBatisDaoSupport extends DaoSupport {

	protected final Log log = LogFactory.getLog(getClass());
    
    private SqlSessionFactory sqlSessionFactory;
    private SqlSessionTemplate sqlSessionTemplate;
	@Override
	protected void checkDaoConfig() throws IllegalArgumentException {
		Assert.notNull("sqlSessionFactory must be not null");
	}
	
	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
		this.sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory);
	}
	
	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}
	
	public static class SqlSessionTemplate {
		SqlSessionFactory sqlSessionFactory;
		
		public SqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
			this.sqlSessionFactory = sqlSessionFactory;
		}
		
		private SqlSession openSqlSession() {
			return sqlSessionFactory.openSession();
		}
		
		private void sqlSessionClose(SqlSession session) {
			if(session != null) {
				try {
					session.getConnection().close();
					session.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		public Object selectOne(final String statement,Object parameter) {
			SqlSession session = null;
			try {
				session = openSqlSession();
				return session.selectOne(statement, parameter);
			} finally {
				sqlSessionClose(session);
			}
		}
		
		@SuppressWarnings("unchecked")
		public List selectList(final String statement,Object parameter,int offset,int limit) {
			SqlSession session = null;
			try {
				session = openSqlSession();
				return session.selectList(statement, parameter, new RowBounds(offset,limit));
			} finally {
				sqlSessionClose(session);
			}
		}
		
		@SuppressWarnings("unchecked")
		public List selectList(final String statement,Object parameter) {
			SqlSession session = null;
			try {
				session = openSqlSession();
				return session.selectList(statement, parameter);
			} finally {
				sqlSessionClose(session);
			}
		}
		
		public int delete(final String statement,Object parameter) {
			SqlSession session = null;
			try {
				session = openSqlSession();
				return session.delete(statement, parameter);
			} finally {
				sqlSessionClose(session);
			}
		}
		
		public int update(final String statement,Object parameter) {
			SqlSession session = null;
			try {
				session = openSqlSession();
				return session.update(statement, parameter);
			} finally {
				sqlSessionClose(session);
			}
		}
		
		public int insert(final String statement,Object parameter) {
			SqlSession session = null;
			try {
				session = openSqlSession();
				return session.insert(statement, parameter);
			} finally {
				sqlSessionClose(session);
			}
		}
	} 
	
}
