package com.citipf.liyunpeng.dao.iBatis;

import java.util.List;

import com.citipf.liyunpeng.dao.Iface.IUInveDao;
import com.citipf.liyunpeng.valueObject.UInveVO;

public class UInveDaoImpl extends IBatisDaoSupport implements IUInveDao<UInveVO> {

	@Override
	public void delete(UInveVO t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(UInveVO t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UInveVO select(UInveVO o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UInveVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UInveVO> selectList(UInveVO o) {
		return this.getSqlSessionTemplate().selectList("UInve.selectListUInvevo",o.getIp_infId());
	}

	@Override
	public void update(UInveVO t) {
		// TODO Auto-generated method stub
		
	}

}
