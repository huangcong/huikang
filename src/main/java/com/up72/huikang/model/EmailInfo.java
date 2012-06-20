
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
 * 邮件帐户信息
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_email_info")
public class EmailInfo implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "邮件帐户信息";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_DOCTOR_ID = "用户编号";
	public static final String ALIAS_EMAIL = "邮件地址";
	public static final String ALIAS_SERVER = "邮件服务器";
	public static final String ALIAS_PASSWORD = "密码";
	public static final String ALIAS_AUTH = "是否需要认证";
	public static final String ALIAS_DELETED = "是否删除";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Integer id;
	
	/** 用户编号*/
	private java.lang.Long doctorId;
	
	/** 邮件地址*/
	private java.lang.String email;
	
	/** 邮件服务器*/
	private java.lang.String server;
	
	/** 密码*/
	private java.lang.String password;
	
	/** 是否需要认证*/
	private Integer auth;
	
	/** 是否删除*/
	private Integer deleted;
	
	//columns END


	public EmailInfo(){
	}

	public EmailInfo(
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
	
	@Column(name = "doctor_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDoctorId() {
		return this.doctorId;
	}
	
	public void setDoctorId(java.lang.Long value) {
		this.doctorId = value;
	}
	
	@Column(name = "email", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getEmail() {
		return this.email;
	}
	
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	@Column(name = "server", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getServer() {
		return this.server;
	}
	
	public void setServer(java.lang.String value) {
		this.server = value;
	}
	
	@Column(name = "password", unique = false, nullable = false, insertable = true, updatable = true, length = 255)
	public java.lang.String getPassword() {
		return this.password;
	}
	
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	@Column(name = "auth", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getAuth() {
		return this.auth;
	}
	
	public void setAuth(Integer value) {
		this.auth = value;
	}
	
	@Column(name = "deleted", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getDeleted() {
		return this.deleted;
	}
	
	public void setDeleted(Integer value) {
		this.deleted = value;
	}
	

/** 充血实现begin */
	@Transient
	public EmailInfo getEmailInfo() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		EmailInfo result = null;
		if(this.id != null){
			result = (EmailInfo)d.get(EmailInfo.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from EmailInfo where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmail())) {
			params.put(" email", this.getEmail());
	    }
	    if(ObjectUtils.isNotEmpty(this.getServer())) {
			params.put(" server", this.getServer());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPassword())) {
			params.put(" password", this.getPassword());
	    }
	    if(ObjectUtils.isNotEmpty(this.getAuth())) {
			params.put(" auth", this.getAuth());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDeleted())) {
			params.put(" deleted", this.getDeleted());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from EmailInfo where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEmail())) {
			params.put(" email", this.getEmail());
	    }
	    if(ObjectUtils.isNotEmpty(this.getServer())) {
			params.put(" server", this.getServer());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPassword())) {
			params.put(" password", this.getPassword());
	    }
	    if(ObjectUtils.isNotEmpty(this.getAuth())) {
			params.put(" auth", this.getAuth());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDeleted())) {
			params.put(" deleted", this.getDeleted());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("DoctorId",getDoctorId())
			.append("Email",getEmail())
			.append("Server",getServer())
			.append("Password",getPassword())
			.append("Auth",getAuth())
			.append("Deleted",getDeleted())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof EmailInfo == false) return false;
		if(this == obj) return true;
		EmailInfo other = (EmailInfo)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

