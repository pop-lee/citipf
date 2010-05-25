package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.dao.Iface.IUserDao;
import com.citipf.liyunpeng.valueObject.UserVO;

public class UserDaoImpl extends IBatisDaoSupport implements IUserDao<UserVO> {
	
	@Override
	public List<UserVO> selectList(UserVO o) {
		return null;
	}

	@Override
	public void delete(UserVO t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(UserVO t) {
		this.getSqlSessionTemplate().insert("User.insertUserVO", t);
	}

	@Override
	public UserVO select(UserVO o) {
		return (UserVO)this.getSqlSessionTemplate().selectOne("User.selectUserVOByBankID",o);
	}

	@Override
	public List<UserVO> selectAll() {
		return selectList(null);
	}

	@Override
	public void update(UserVO t) {
		// TODO Auto-generated method stub
		
	}
}
