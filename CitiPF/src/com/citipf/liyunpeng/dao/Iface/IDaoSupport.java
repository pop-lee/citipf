package com.citipf.liyunpeng.dao.Iface ;

import java.util.List;

public abstract interface IDaoSupport<T> {
	
	public List<T> doGetAll() ;
	
	public List<T> doGetAll(Object o) ;
	
	public void doAdd(T t) ;
	
	public T doGet(Object o) ;
	
	public void doUpdate(Object o) ;
	
}
