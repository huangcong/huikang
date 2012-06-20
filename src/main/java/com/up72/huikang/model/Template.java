
/*
 * Powered By [up72-framework]
 * Web Site: http://www.up72.com
 * Since 2006 - 2012
 */

package com.up72.huikang.model;

import java.util.Date;
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
import com.up72.framework.util.DateConvertUtils;
import com.up72.framework.util.ObjectUtils;
import com.up72.framework.util.holder.ApplicationContextHolder;
import com.up72.web.util.DateUtils;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;
/**
 * 模板
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_template")
public class Template implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "模板";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_NAME = "模板名称";
	public static final String ALIAS_CONTENT = "模板内容";
	public static final String ALIAS_MODELS = "关联模型";
	public static final String ALIAS_TYPE = "类型（邮件，短信）";
	public static final String ALIAS_ENABLE = "是否启用";
	public static final String ALIAS_CREATE_TIME = "创建时间";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = "yyyy-MM-dd";
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 模板名称*/
	private java.lang.String name;
	
	/** 模板内容*/
	private java.lang.String content;
	
	/** 关联模型*/
	private java.lang.String models;
	
	/** 类型（邮件，短信）*/
	private java.lang.String type;
	
	/** 是否启用*/
	private Integer enable;
	
	/** 创建时间*/
	private java.lang.Long createTime;
	
	//columns END


	public Template(){
	}

	public Template(
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
	
	@Column(name = "content", unique = false, nullable = false, insertable = true, updatable = true, length = 2147483647)
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	@Column(name = "models", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getModels() {
		return this.models;
	}
	
	public void setModels(java.lang.String value) {
		this.models = value;
	}
	
	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getType() {
		return this.type;
	}
	
	public void setType(java.lang.String value) {
		this.type = value;
	}
	
	@Column(name = "enable", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getEnable() {
		return this.enable;
	}
	
	public void setEnable(Integer value) {
		this.enable = value;
	}
	
	@Transient
	public String getCreateTimeString() {
		return DateUtils.format(getCreateTime(), FORMAT_CREATE_TIME);
	}
	
	@Transient
	public Date getCreateTimeDate() {
		return DateUtils.longToDate(this.createTime);
	}
	@Column(name = "create_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.lang.Long value) {
		this.createTime = value;
	}
	

/** 充血实现begin */
	@Transient
	public Template getTemplate() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		Template result = null;
		if(this.id != null){
			result = (Template)d.get(Template.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Template where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
	    }
	    if(ObjectUtils.isNotEmpty(this.getModels())) {
			params.put(" models", this.getModels());
	    }
	    if(ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEnable())) {
			params.put(" enable", this.getEnable());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Template where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
	    }
	    if(ObjectUtils.isNotEmpty(this.getModels())) {
			params.put(" models", this.getModels());
	    }
	    if(ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEnable())) {
			params.put(" enable", this.getEnable());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("Content",getContent())
			.append("Models",getModels())
			.append("Type",getType())
			.append("Enable",getEnable())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Template == false) return false;
		if(this == obj) return true;
		Template other = (Template)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

