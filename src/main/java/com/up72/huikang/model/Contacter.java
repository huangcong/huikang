
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
 * 联系人信息
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_contacter")
public class Contacter implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "联系人信息";
	public static final String ALIAS_ID = "联系人编号";
	public static final String ALIAS_PATIENT_ID = "患者编号";
	public static final String ALIAS_NAME = "姓名";
	public static final String ALIAS_SEX = "性别";
	public static final String ALIAS_EMAIL = "邮箱";
	public static final String ALIAS_PHONE = "家庭电话";
	public static final String ALIAS_MOBILE = "手机";
	public static final String ALIAS_COMPANY = "单位（公司）";
	public static final String ALIAS_MAIN_TYPE = "主要联系方式";
	
	//date formats
	

	
	//columns START
	/** 联系人编号*/
	private java.lang.Long id;
	
	/** 患者编号*/
	private java.lang.Long patientId;
	
	/** 姓名*/
	private java.lang.String name;
	
	/** 性别*/
	private Integer sex;
	
	/** 邮箱*/
	private java.lang.String email;
	
	/** 家庭电话*/
	private java.lang.String phone;
	
	/** 手机*/
	private java.lang.String mobile;
	
	/** 单位（公司）*/
	private java.lang.String company;
	
	/** 主要联系方式*/
	private java.lang.String mainType;
	
	//columns END


	public Contacter(){
	}

	public Contacter(
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
	
	@Column(name = "patient_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getPatientId() {
		return this.patientId;
	}
	
	public void setPatientId(java.lang.Long value) {
		this.patientId = value;
	}
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "sex", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getSex() {
		return this.sex;
	}
	
	public void setSex(Integer value) {
		this.sex = value;
	}
	
	@Column(name = "email", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getEmail() {
		return this.email;
	}
	
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	@Column(name = "phone", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getPhone() {
		return this.phone;
	}
	
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	@Column(name = "mobile", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getMobile() {
		return this.mobile;
	}
	
	public void setMobile(java.lang.String value) {
		this.mobile = value;
	}
	
	@Column(name = "company", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getCompany() {
		return this.company;
	}
	
	public void setCompany(java.lang.String value) {
		this.company = value;
	}
	
	@Column(name = "main_type", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getMainType() {
		return this.mainType;
	}
	
	public void setMainType(java.lang.String value) {
		this.mainType = value;
	}
	

/** 充血实现begin */
	@Transient
	public Contacter getContacter() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		Contacter result = null;
		if(this.id != null){
			result = (Contacter)d.get(Contacter.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Contacter where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSex())) {
			params.put(" sex", this.getSex());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmail())) {
			params.put(" email", this.getEmail());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPhone())) {
			params.put(" phone", this.getPhone());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMobile())) {
			params.put(" mobile", this.getMobile());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCompany())) {
			params.put(" company", this.getCompany());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMainType())) {
			params.put(" mainType", this.getMainType());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Contacter where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSex())) {
			params.put(" sex", this.getSex());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmail())) {
			params.put(" email", this.getEmail());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPhone())) {
			params.put(" phone", this.getPhone());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMobile())) {
			params.put(" mobile", this.getMobile());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCompany())) {
			params.put(" company", this.getCompany());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMainType())) {
			params.put(" mainType", this.getMainType());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("PatientId",getPatientId())
			.append("Name",getName())
			.append("Sex",getSex())
			.append("Email",getEmail())
			.append("Phone",getPhone())
			.append("Mobile",getMobile())
			.append("Company",getCompany())
			.append("MainType",getMainType())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Contacter == false) return false;
		if(this == obj) return true;
		Contacter other = (Contacter)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

