
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
 * 医生信息
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_doctor")
public class Doctor implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "医生信息";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_USER_NAME = "用户名";
	public static final String ALIAS_PASSWORD = "密码";
	public static final String ALIAS_REAL_NAME = "真实姓名";
	public static final String ALIAS_BIRTHDAY = "出生日期";
	public static final String ALIAS_SEX = "性别";
	public static final String ALIAS_ADDRESS = "地址";
	public static final String ALIAS_PHONE = "家庭电话";
	public static final String ALIAS_MOBILE = "手机";
	public static final String ALIAS_EMAIL = "邮箱";
	public static final String ALIAS_MAIN_TYPE = "优先联系方式";
	public static final String ALIAS_NATION = "民族";
	public static final String ALIAS_MARRIAGE = "婚姻状况";
	public static final String ALIAS_COMPANY = "单位";
	public static final String ALIAS_WORK_GROUP_ID = "工作组";
	public static final String ALIAS_SITE = "站点";
	public static final String ALIAS_EMAIL_VALID = "邮箱帐号是否有效";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 用户名*/
	private java.lang.String userName;
	
	/** 密码*/
	private java.lang.String password;
	
	/** 真实姓名*/
	private java.lang.String realName;
	
	/** 出生日期*/
	private java.lang.Long birthday;
	
	/** 性别*/
	private Integer sex;
	
	/** 地址*/
	private java.lang.String address;
	
	/** 家庭电话*/
	private java.lang.String phone;
	
	/** 手机*/
	private java.lang.String mobile;
	
	/** 邮箱*/
	private java.lang.String email;
	
	/** 优先联系方式*/
	private java.lang.String mainType;
	
	/** 民族*/
	private java.lang.Long nation;
	
	/** 婚姻状况*/
	private java.lang.Long marriage;
	
	/** 单位*/
	private java.lang.String company;
	
	/** 工作组*/
	private java.lang.Long workGroupId;
	
	/** 站点*/
	private java.lang.String site;
	
	/** 邮箱帐号是否有效*/
	private Integer emailValid;
	
	//columns END


	public Doctor(){
	}

	public Doctor(
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
	
	@Column(name = "user_name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getUserName() {
		return this.userName;
	}
	
	public void setUserName(java.lang.String value) {
		this.userName = value;
	}
	
	@Column(name = "password", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getPassword() {
		return this.password;
	}
	
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	@Column(name = "real_name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getRealName() {
		return this.realName;
	}
	
	public void setRealName(java.lang.String value) {
		this.realName = value;
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
	
	@Column(name = "phone", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	public java.lang.String getPhone() {
		return this.phone;
	}
	
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	@Column(name = "mobile", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
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
	
	@Column(name = "work_group_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getWorkGroupId() {
		return this.workGroupId;
	}
	
	public void setWorkGroupId(java.lang.Long value) {
		this.workGroupId = value;
	}
	
	@Column(name = "site", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getSite() {
		return this.site;
	}
	
	public void setSite(java.lang.String value) {
		this.site = value;
	}
	
	@Column(name = "email_valid", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getEmailValid() {
		return this.emailValid;
	}
	
	public void setEmailValid(Integer value) {
		this.emailValid = value;
	}
	

/** 充血实现begin */
	@Transient
	public Doctor getDoctor() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		Doctor result = null;
		if(this.id != null){
			result = (Doctor)d.get(Doctor.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Doctor where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getUserName())) {
			params.put(" userName", this.getUserName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPassword())) {
			params.put(" password", this.getPassword());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRealName())) {
			params.put(" realName", this.getRealName());
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
	    if(ObjectUtils.isNotEmpty(this.getWorkGroupId())) {
			params.put(" workGroupId", this.getWorkGroupId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSite())) {
			params.put(" site", this.getSite());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmailValid())) {
			params.put(" emailValid", this.getEmailValid());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Doctor where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getUserName())) {
			params.put(" userName", this.getUserName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPassword())) {
			params.put(" password", this.getPassword());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRealName())) {
			params.put(" realName", this.getRealName());
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
	    if(ObjectUtils.isNotEmpty(this.getWorkGroupId())) {
			params.put(" workGroupId", this.getWorkGroupId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSite())) {
			params.put(" site", this.getSite());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmailValid())) {
			params.put(" emailValid", this.getEmailValid());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("UserName",getUserName())
			.append("Password",getPassword())
			.append("RealName",getRealName())
			.append("Birthday",getBirthday())
			.append("Sex",getSex())
			.append("Address",getAddress())
			.append("Phone",getPhone())
			.append("Mobile",getMobile())
			.append("Email",getEmail())
			.append("MainType",getMainType())
			.append("Nation",getNation())
			.append("Marriage",getMarriage())
			.append("Company",getCompany())
			.append("WorkGroupId",getWorkGroupId())
			.append("Site",getSite())
			.append("EmailValid",getEmailValid())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Doctor == false) return false;
		if(this == obj) return true;
		Doctor other = (Doctor)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

