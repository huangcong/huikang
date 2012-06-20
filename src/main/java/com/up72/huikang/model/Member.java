/*
 * Powered By [up72-framework]
 * Web Site: http://www.up72.com
 * Since 2006 - 2012
 */

package com.up72.huikang.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

import com.up72.dao.hibernate.CommonDAOHibernate;
import com.up72.service.util.BaseBeanFactory;

/**
 * 医生信息
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "sys_member")
public class Member implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// columns START
	/** 编号 */
	private java.lang.Long id;

	/** 用户名 */
	private java.lang.String userName;

	/** 密码 */
	private java.lang.String password;

	/** 邮箱 */
	private java.lang.String email;

	/** 角色 */
	private java.lang.String role;

	/** 权限码 */
	private java.lang.String authCode;

	/** 帐号是否有效 */
	private Integer enable;

	/** 关联模型编号 */
	private java.lang.Long modelId;

	// columns END

	public Member() {
	}

	public Member(java.lang.Long id) {
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

	@Column(name = "email", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getEmail() {
		return this.email;
	}

	public void setEmail(java.lang.String value) {
		this.email = value;
	}

	@Column(name = "role", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getRole() {
		return this.role;
	}

	public void setRole(java.lang.String value) {
		this.role = value;
	}

	@Column(name = "auth_code", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getAuthCode() {
		return this.authCode;
	}

	public void setAuthCode(java.lang.String value) {
		this.authCode = value;
	}

	@Column(name = "model_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getModelId() {
		return this.modelId;
	}

	public void setModelId(java.lang.Long value) {
		this.modelId = value;
	}

	@Column(name = "enable", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getEnable() {
		return this.enable;
	}

	public void setEnable(Integer value) {
		this.enable = value;
	}

	@Transient
	public Doctor getModel() {
		if (this.getModelId() != null && 0 != this.getModelId()) {
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
					.getBean("commonDAOHibernate");
			return (Doctor) d.get(Doctor.class, this.getModelId());
		} else {
			return null;
		}
	}

	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	public boolean equals(Object obj) {
		if (obj instanceof Member == false)
			return false;
		if (this == obj)
			return true;
		Member other = (Member) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}
