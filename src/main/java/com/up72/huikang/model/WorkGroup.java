
/*
 * Powered By [up72-framework]
 * Web Site: http://www.up72.com
 * Since 2006 - 2012
 */

package com.up72.huikang.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.up72.dao.hibernate.CommonDAOHibernate;
import com.up72.framework.util.ObjectUtils;
import com.up72.framework.util.holder.ApplicationContextHolder;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;
/**
 * 工作组
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_work_group")
public class WorkGroup implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "工作组";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_NAME = "组名称";
	public static final String ALIAS_WORK_GROUP_ID = "父类分组";
	public static final String ALIAS_DESCRPTION = "描述";
	public static final String ALIAS_SORT = "排序";
	public static final String ALIAS_ENABLE = "是否启用";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 组名称*/
	private java.lang.String name;
	
	/** 父类分组*/
	private java.lang.Long workGroupId;
	
	/** 描述*/
	private java.lang.String descrption;
	
	/** 排序*/
	private java.lang.Integer sort;
	
	/** 是否启用*/
	private Integer enable;
	
	//columns END


	public WorkGroup(){
	}

	public WorkGroup(
		java.lang.Long id
	){
		this.id = id;
	}

	

	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "work_group_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getWorkGroupId() {
		return this.workGroupId;
	}
	
	public void setWorkGroupId(java.lang.Long value) {
		this.workGroupId = value;
	}
	
	@Column(name = "descrption", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public java.lang.String getDescrption() {
		return this.descrption;
	}
	
	public void setDescrption(java.lang.String value) {
		this.descrption = value;
	}
	
	@Column(name = "sort", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getSort() {
		return this.sort;
	}
	
	public void setSort(java.lang.Integer value) {
		this.sort = value;
	}
	
	@Column(name = "enable", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getEnable() {
		return this.enable;
	}
	
	public void setEnable(Integer value) {
		this.enable = value;
	}
	

/** 充血实现begin */
	@Transient
	public WorkGroup getWorkGroup() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		WorkGroup result = null;
		if(this.id != null){
			result = (WorkGroup)d.get(WorkGroup.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from WorkGroup where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkGroupId())) {
			params.put(" workGroupId", this.getWorkGroupId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDescrption())) {
			params.put(" descrption", this.getDescrption());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEnable())) {
			params.put(" enable", this.getEnable());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from WorkGroup where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkGroupId())) {
			params.put(" workGroupId", this.getWorkGroupId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDescrption())) {
			params.put(" descrption", this.getDescrption());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEnable())) {
			params.put(" enable", this.getEnable());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("WorkGroupId",getWorkGroupId())
			.append("Descrption",getDescrption())
			.append("Sort",getSort())
			.append("Enable",getEnable())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof WorkGroup == false) return false;
		if(this == obj) return true;
		WorkGroup other = (WorkGroup)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

