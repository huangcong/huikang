
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
 * 医生-病种
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_doctor_disease")
public class DoctorDisease implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "医生-病种";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_DOCTOR_ID = "医生编号";
	public static final String ALIAS_DISEASE_ID = "病种编号";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 医生编号*/
	private java.lang.Long doctorId;
	
	/** 病种编号*/
	private java.lang.Long diseaseId;
	
	//columns END


	public DoctorDisease(){
	}

	public DoctorDisease(
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
	
	@Column(name = "doctor_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDoctorId() {
		return this.doctorId;
	}
	
	public void setDoctorId(java.lang.Long value) {
		this.doctorId = value;
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
	public DoctorDisease getDoctorDisease() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		DoctorDisease result = null;
		if(this.id != null){
			result = (DoctorDisease)d.get(DoctorDisease.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from DoctorDisease where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
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
		String hql = "from DoctorDisease where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
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
			.append("DoctorId",getDoctorId())
			.append("DiseaseId",getDiseaseId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof DoctorDisease == false) return false;
		if(this == obj) return true;
		DoctorDisease other = (DoctorDisease)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

