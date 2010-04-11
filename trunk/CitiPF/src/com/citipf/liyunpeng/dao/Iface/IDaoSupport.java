package com.citipf.liyunpeng.dao.Iface ;

import java.util.List;

public abstract interface IDaoSupport<T> {
	
	public List<T> selectAll() ;
	
	public List<T> selectList(Object o) ;
	
	public void insert(T t) ;
	
	public T select(Object o) ;
	
	public void update(T t) ;
	
	public void delete(T t) ;
	
}
