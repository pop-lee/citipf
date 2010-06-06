package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.dao.Iface.IPurcProgDao;
import com.citipf.liyunpeng.valueObject.PurcProgVO;

public class PurcProgDaoImpl extends IBatisDaoSupport implements IPurcProgDao<PurcProgVO> {

	@Override
	public void delete(PurcProgVO t) {
		this.getSqlSessionTemplate().delete("PurcProg.deletePurcProg", t);
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

	@SuppressWarnings("unchecked")
	@Override
	public List<PurcProgVO> selectList(PurcProgVO o) {
		return this.getSqlSessionTemplate().selectList("PurcProg.selectPurcProgList", o);
	}

	@Override
	public void update(PurcProgVO t) {
		// TODO Auto-generated method stub
		
	}

}
