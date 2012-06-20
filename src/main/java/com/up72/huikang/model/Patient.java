
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
 * 患者信息
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_patient")
public class Patient implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "患者信息";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_CODE = "医保号";
	public static final String ALIAS_NAME = "姓名";
	public static final String ALIAS_LEVEL = "级别";
	public static final String ALIAS_BIRTHDAY = "出生日期";
	public static final String ALIAS_SEX = "性别";
	public static final String ALIAS_ADDRESS = "详细地址";
	public static final String ALIAS_ZIP_CODE = "邮编";
	public static final String ALIAS_DEGREE = "学历";
	public static final String ALIAS_PHONE = "家庭电话";
	public static final String ALIAS_MOBILE = "手机";
	public static final String ALIAS_EMAIL = "邮箱";
	public static final String ALIAS_MAIN_TYPE = "主要联系方式";
	public static final String ALIAS_NATION = "民族";
	public static final String ALIAS_MARRIAGE = "婚姻状况";
	public static final String ALIAS_COMPANY = "单位";
	public static final String ALIAS_CONTACTER1 = "联系人1";
	public static final String ALIAS_CONTACTER2 = "联系人2";
	public static final String ALIAS_SOURCE = "来源";
	public static final String ALIAS_REMARK = "备注";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 医保号*/
	private java.lang.String code;
	
	/** 姓名*/
	private java.lang.String name;
	
	/** 级别 */
	private java.lang.Long level;//0普通，1vip
	
	/** 出生日期*/
	private java.lang.Long birthday;
	
	/** 性别*/
	private Integer sex;
	
	/** 详细地址*/
	private java.lang.String address;
	
	/** 邮编*/
	private java.lang.String zipCode;
	
	/** 学历*/
	private java.lang.Long degree;
	
	/** 家庭电话*/
	private java.lang.String phone;
	
	/** 手机*/
	private java.lang.String mobile;
	
	/** 邮箱*/
	private java.lang.String email;
	
	/** 主要联系方式*/
	private java.lang.String mainType;
	
	/** 民族*/
	private java.lang.Long nation;
	
	/** 婚姻状况*/
	private java.lang.Long marriage;
	
	/** 单位*/
	private java.lang.String company;
	
	/** 联系人1*/
	private java.lang.Long contacter1;
	
	/** 联系人2*/
	private java.lang.Long contacter2;
	
	/** 来源*/
	private java.lang.String source;
	
	/** 备注*/
	private java.lang.String remark;
	
	//columns END


	public Patient(){
	}

	public Patient(
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
	
	@Column(name = "code", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getCode() {
		return this.code;
	}
	
	public void setCode(java.lang.String value) {
		this.code = value;
	}
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "level", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.Long getLevel() {
		return this.level;
	}
	
	public void setLevel(java.lang.Long value) {
		this.level = value;
	}
	
	@Column(name = "birthday", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getBirthday() {
		return this.birthday;
	}
	
	public void setBirthday(java.lang.Long value) {
		this.birthday = value;
	}
	
	@Column(name = "sex", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getSex() {
		return this.sex;
	}
	
	public void setSex(Integer value) {
		this.sex = value;
	}
	
	@Column(name = "address", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getAddress() {
		return this.address;
	}
	
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	@Column(name = "zip_code", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getZipCode() {
		return this.zipCode;
	}
	
	public void setZipCode(java.lang.String value) {
		this.zipCode = value;
	}
	
	@Column(name = "degree", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDegree() {
		return this.degree;
	}
	
	public void setDegree(java.lang.Long value) {
		this.degree = value;
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
	
	@Column(name = "email", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getEmail() {
		return this.email;
	}
	
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	@Column(name = "main_type", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getMainType() {
		return this.mainType;
	}
	
	public void setMainType(java.lang.String value) {
		this.mainType = value;
	}
	
	@Column(name = "nation", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getNation() {
		return this.nation;
	}
	
	public void setNation(java.lang.Long value) {
		this.nation = value;
	}
	
	@Column(name = "marriage", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getMarriage() {
		return this.marriage;
	}
	
	public void setMarriage(java.lang.Long value) {
		this.marriage = value;
	}
	
	@Column(name = "company", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getCompany() {
		return this.company;
	}
	
	public void setCompany(java.lang.String value) {
		this.company = value;
	}
	
	@Column(name = "contacter1", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getContacter1() {
		return this.contacter1;
	}
	
	public void setContacter1(java.lang.Long value) {
		this.contacter1 = value;
	}
	
	@Column(name = "contacter2", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getContacter2() {
		return this.contacter2;
	}
	
	public void setContacter2(java.lang.Long value) {
		this.contacter2 = value;
	}
	
	@Column(name = "source", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getSource() {
		return this.source;
	}
	
	public void setSource(java.lang.String value) {
		this.source = value;
	}
	
	@Column(name = "remark", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public java.lang.String getRemark() {
		return this.remark;
	}
	
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	

/** 充血实现begin */
	@Transient
	public Patient getPatient() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		Patient result = null;
		if(this.id != null){
			result = (Patient)d.get(Patient.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Patient where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCode())) {
			params.put(" code", this.getCode());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLevel())) {
			params.put(" name", this.getLevel());
	    }
	    if(ObjectUtils.isNotEmpty(this.getBirthday())) {
			params.put(" birthday", this.getBirthday());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSex())) {
			params.put(" sex", this.getSex());
	    }
	    if(ObjectUtils.isNotEmpty(this.getAddress())) {
			params.put(" address", this.getAddress());
	    }
	    if(ObjectUtils.isNotEmpty(this.getZipCode())) {
			params.put(" zipCode", this.getZipCode());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDegree())) {
			params.put(" degree", this.getDegree());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPhone())) {
			params.put(" phone", this.getPhone());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMobile())) {
			params.put(" mobile", this.getMobile());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmail())) {
			params.put(" email", this.getEmail());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMainType())) {
			params.put(" mainType", this.getMainType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getNation())) {
			params.put(" nation", this.getNation());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMarriage())) {
			params.put(" marriage", this.getMarriage());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCompany())) {
			params.put(" company", this.getCompany());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContacter1())) {
			params.put(" contacter1", this.getContacter1());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContacter2())) {
			params.put(" contacter2", this.getContacter2());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSource())) {
			params.put(" source", this.getSource());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRemark())) {
			params.put(" remark", this.getRemark());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Patient where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCode())) {
			params.put(" code", this.getCode());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLevel())) {
			params.put(" name", this.getLevel());
	    }
	    if(ObjectUtils.isNotEmpty(this.getBirthday())) {
			params.put(" birthday", this.getBirthday());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSex())) {
			params.put(" sex", this.getSex());
	    }
	    if(ObjectUtils.isNotEmpty(this.getAddress())) {
			params.put(" address", this.getAddress());
	    }
	    if(ObjectUtils.isNotEmpty(this.getZipCode())) {
			params.put(" zipCode", this.getZipCode());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDegree())) {
			params.put(" degree", this.getDegree());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPhone())) {
			params.put(" phone", this.getPhone());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMobile())) {
			params.put(" mobile", this.getMobile());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmail())) {
			params.put(" email", this.getEmail());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMainType())) {
			params.put(" mainType", this.getMainType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getNation())) {
			params.put(" nation", this.getNation());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMarriage())) {
			params.put(" marriage", this.getMarriage());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCompany())) {
			params.put(" company", this.getCompany());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContacter1())) {
			params.put(" contacter1", this.getContacter1());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContacter2())) {
			params.put(" contacter2", this.getContacter2());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSource())) {
			params.put(" source", this.getSource());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRemark())) {
			params.put(" remark", this.getRemark());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Code",getCode())
			.append("Name",getName())
			.append("Level",getLevel())
			.append("Birthday",getBirthday())
			.append("Sex",getSex())
			.append("Address",getAddress())
			.append("ZipCode",getZipCode())
			.append("Degree",getDegree())
			.append("Phone",getPhone())
			.append("Mobile",getMobile())
			.append("Email",getEmail())
			.append("MainType",getMainType())
			.append("Nation",getNation())
			.append("Marriage",getMarriage())
			.append("Company",getCompany())
			.append("Contacter1",getContacter1())
			.append("Contacter2",getContacter2())
			.append("Source",getSource())
			.append("Remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Patient == false) return false;
		if(this == obj) return true;
		Patient other = (Patient)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

