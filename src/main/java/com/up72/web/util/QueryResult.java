package com.up72.web.util;

import java.util.List;

/**
 * 查询结果对象
 * 
 * @author ntsky
 * @link www.ntsky.com
 */
public class QueryResult implements java.io.Serializable{
	
	public QueryResult(){}
	
	private String hql;
	private Pagination pagination;
	private List items = null;	
	
	public String getHql() {
		return hql;
	}

	public void setHql(String hql) {
		this.hql = hql;
	}

	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	public QueryResult(Pagination pagination,List items){
		this.pagination = pagination;
		this.items = items;
	}
		
	public List getItems() {
		return this.items;
	}
	public void setItems(List items){
		this.items = items;
	}

	public Pagination getPagination() {
		return pagination;
	}
	
}
