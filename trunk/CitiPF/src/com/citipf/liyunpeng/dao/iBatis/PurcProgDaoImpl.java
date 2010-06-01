package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.dao.Iface.IPurcProgDao;
import com.citipf.liyunpeng.valueObject.PurcProgVO;

public class PurcProgDaoImpl extends IBatisDaoSupport implements IPurcProgDao<PurcProgVO> {

	@Override
	public void delete(PurcProgVO t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(PurcProgVO t) {
		this.getSqlSessionTemplate().insert("PurcProg.insertPurcProg", t);
		
	}

	@Override
	public PurcProgVO select(PurcProgVO o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PurcProgVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PurcProgVO> selectList(PurcProgVO o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(PurcProgVO t) {
		// TODO Auto-generated method stub
		
	}

}
