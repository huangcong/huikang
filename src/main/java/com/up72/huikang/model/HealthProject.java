
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

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.up72.dao.hibernate.CommonDAOHibernate;
import com.up72.framework.util.ObjectUtils;
import com.up72.huikang.model.*;
//import com.up72.service.util.BaseBeanFactory;
import com.up72.web.util.DateUtils;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;

import com.up72.dao.hibernate.CommonDAOHibernate;
import com.up72.framework.util.ObjectUtils;
import com.up72.framework.util.holder.ApplicationContextHolder;


import java.util.*;

import com.up72.base.*;

import com.up72.framework.util.*;
import com.up72.framework.web.util.*;
import com.up72.framework.page.*;
import com.up72.framework.page.impl.*;

import com.up72.huikang.model.*;
/**
 * 
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_health_project")
public class HealthProject implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "HealthProject";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "项目";
	public static final String ALIAS_PLACE = "执行地点";
	public static final String ALIAS_FREQUENCY = "频率";
	public static final String ALIAS_DOSE = "剂量";
	public static final String ALIAS_CONFIDENCE = "信心指数";
	public static final String ALIAS_RESULT = "是否达标";
	public static final String ALIAS_SORT = "排序";
	public static final String ALIAS_RECORD_ID = "项目";
	
	//date formats
	

	
	//columns START
	/** */
	private java.lang.Integer id;
	
	/** 项目*/
	private java.lang.String name;
	
	/** 执行地点*/
	private java.lang.String place;
	
	/** 频率*/
	private java.lang.Long frequency;
	
	/** 剂量*/
	private java.lang.String dose;
	
	/** 信心指数*/
	private java.lang.Integer confidence;
	
	/** 是否达标*/
	private java.lang.String result;//0达标，1未达标
	
	/** 排序*/
	private java.lang.Integer sort;
	
	/** 项目id */
	private java.lang.Integer recordId;
	
	//columns END


	public HealthProject(){
	}

	public HealthProject(
		java.lang.Integer id
	){
		this.id = id;
	}

	

	public void setId(java.lang.Integer value) {
		this.id = value;
	}
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getId() {
		return this.id;
	}
	
	@Column(name = "name", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "place", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getPlace() {
		return this.place;
	}
	
	public void setPlace(java.lang.String value) {
		this.place = value;
	}
	
	@Column(name = "frequency", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getFrequency() {
		return this.frequency;
	}
	
	public void setFrequency(java.lang.Long value) {
		this.frequency = value;
	}
	
	@Column(name = "dose", unique = false, nullable = true, insertable = true, updatable = true, length = 45)
	public java.lang.String getDose() {
		return this.dose;
	}
	
	public void setDose(java.lang.String value) {
		this.dose = value;
	}
	
	@Column(name = "confidence", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getConfidence() {
		return this.confidence;
	}
	
	public void setConfidence(java.lang.Integer value) {
		this.confidence = value;
	}
	
	@Column(name = "result", unique = false, nullable = true, insertable = true, updatable = true, length = 45)
	public java.lang.String getResult() {
		return this.result;
	}
	
	public void setResult(java.lang.String value) {
		this.result = value;
	}
	
	@Column(name = "sort", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getSort() {
		return this.sort;
	}
	
	public void setSort(java.lang.Integer value) {
		this.sort = value;
	}
	
	@Column(name = "record_id", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.Integer getRecordId() {
		return this.recordId;
	}
	
	public void setRecordId(java.lang.Integer value) {
		this.recordId = value;
	}
	

/** 充血实现begin */
	@Transient
	public HealthProject getHealthProject() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HealthProject result = null;
		if(this.id != null){
			result = (HealthProject)d.get(HealthProject.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from HealthProject where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPlace())) {
			params.put(" place", this.getPlace());
	    }
	    if(ObjectUtils.isNotEmpty(this.getFrequency())) {
			params.put(" frequency", this.getFrequency());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDose())) {
			params.put(" dose", this.getDose());
	    }
	    if(ObjectUtils.isNotEmpty(this.getConfidence())) {
			params.put(" confidence", this.getConfidence());
	    }
	    if(ObjectUtils.isNotEmpty(this.getResult())) {
			params.put(" result", this.getResult());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRecordId())) {
			params.put(" recordId", this.getRecordId());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from HealthProject where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPlace())) {
			params.put(" place", this.getPlace());
	    }
	    if(ObjectUtils.isNotEmpty(this.getFrequency())) {
			params.put(" frequency", this.getFrequency());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDose())) {
			params.put(" dose", this.getDose());
	    }
	    if(ObjectUtils.isNotEmpty(this.getConfidence())) {
			params.put(" confidence", this.getConfidence());
	    }
	    if(ObjectUtils.isNotEmpty(this.getResult())) {
			params.put(" result", this.getResult());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRecordId())) {
			params.put(" recordId", this.getRecordId());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("Place",getPlace())
			.append("Frequency",getFrequency())
			.append("Dose",getDose())
			.append("Confidence",getConfidence())
			.append("Result",getResult())
			.append("Sort",getSort())
			.append("RecordId",getRecordId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof HealthProject == false) return false;
		if(this == obj) return true;
		HealthProject other = (HealthProject)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

