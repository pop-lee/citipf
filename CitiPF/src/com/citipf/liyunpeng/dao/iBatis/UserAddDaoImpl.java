package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.dao.Iface.IUserAddDao;
import com.citipf.liyunpeng.valueObject.UserAddVO;

public class UserAddDaoImpl extends IBatisDaoSupport implements IUserAddDao<UserAddVO> {

	@Override
	public void delete(UserAddVO t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(UserAddVO t) {
		this.getSqlSessionTemplate().insert("UserAdd.insertUserAddVO", t);
	}

	@Override
	public UserAddVO select(UserAddVO o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserAddVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserAddVO> selectList(UserAddVO o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(UserAddVO t) {
		// TODO Auto-generated method stub
		
	}

}
