
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
import com.up72.service.util.BaseBeanFactory;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;
/**
 * 工作单-病种
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_work_disease")
public class WorkDisease implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "工作单-病种";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_WORK_ID = "工作单编号";
	public static final String ALIAS_DISEASE_ID = "病种编号";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 工作单编号*/
	private java.lang.Long workId;
	
	/** 病种编号*/
	private java.lang.Long diseaseId;
	
	//columns END


	public WorkDisease(){
	}

	public WorkDisease(
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
	
	@Column(name = "work_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getWorkId() {
		return this.workId;
	}
	
	public void setWorkId(java.lang.Long value) {
		this.workId = value;
	}
	
	@Column(name = "disease_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDiseaseId() {
		return this.diseaseId;
	}
	
	public void setDiseaseId(java.lang.Long value) {
		this.diseaseId = value;
	}
	

/** 充血实现begin */
	@Transient
	public WorkDisease getWorkDisease() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		WorkDisease result = null;
		if(this.id != null){
			result = (WorkDisease)d.get(WorkDisease.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from WorkDisease where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkId())) {
			params.put(" workId", this.getWorkId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDiseaseId())) {
			params.put(" diseaseId", this.getDiseaseId());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from WorkDisease where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkId())) {
			params.put(" workId", this.getWorkId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDiseaseId())) {
			params.put(" diseaseId", this.getDiseaseId());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("WorkId",getWorkId())
			.append("DiseaseId",getDiseaseId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof WorkDisease == false) return false;
		if(this == obj) return true;
		WorkDisease other = (WorkDisease)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
	
	@Transient
	@SuppressWarnings("unchecked")
	public Disease getDisease(){
		Disease result = null;
		if(this.diseaseId != null && this.diseaseId != 0){
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
			.getBean("commonDAOHibernate");
			result = (Disease)d.get(Disease.class, this.diseaseId);
		}
		return result;
	}
}

