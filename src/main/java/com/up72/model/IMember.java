package com.up72.model;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;

/**  
 * 功能说明
 * @author 
 * @link <a href="http://www.up72.com">北京开拓明天科技有限公司</a>
 * @create Aug 24, 2010
 * @summary  
 */
public interface IMember {

	//alias
	public static final String TABLE_ALIAS = "用户管理";
	public static final String ALIAS_ID = "ID";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_PASSWORD = "password";
	public static final String ALIAS_ORGANIZATION = "organization";
	public static final String ALIAS_PHONE = "phone";
	public static final String ALIAS_ENABLE = "enable";
	public static final String ALIAS_ALIAS = "alias";
	public static final String ALIAS_EMAIL = "email";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_UP_TIME = "更新时间";

	public abstract void setId(java.lang.Long value);

	@Id
	@GeneratedValue(generator = "custom-id")
	@GenericGenerator(name = "custom-id", strategy = "increment")
	@Column(name = "ID", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public abstract java.lang.Long getId();

	@Column(name = "PASSWORD", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	public abstract java.lang.String getPassword();

	public abstract void setPassword(java.lang.String value);

	@Column(name = "ORGANIZATION", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public abstract java.lang.Integer getOrganization();

	public abstract void setOrganization(java.lang.Integer value);

	@Column(name = "PHONE", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	public abstract java.lang.String getPhone();

	public abstract void setPhone(java.lang.String value);

	@Column(name = "ENABLE", unique = false, nullable = true, insertable = true, updatable = true, length = 3)
	public abstract Integer getEnable();

	public abstract void setEnable(Integer value);

	@Column(name = "ALIAS", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	public abstract java.lang.String getAlias();

	public abstract void setAlias(java.lang.String value);

	@Column(name = "EMAIL", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	public abstract java.lang.String getEmail();

	public abstract void setEmail(java.lang.String value);

	@Transient
	public abstract Date getCreateTimeDate();

	@Column(name = "CREATE_TIME", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public abstract java.lang.Long getCreateTime();

	public abstract void setCreateTime(java.lang.Long value);

	@Transient
	public abstract Date getUpTimeDate();

	@Column(name = "UP_TIME", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public abstract java.lang.Long getUpTime();

	public abstract void setUpTime(java.lang.Long value);

	public abstract String toString();

	public abstract int hashCode();

	public abstract boolean equals(Object obj);

	/** 充血实现end */
	@Transient
	public abstract IMember getMember();

	public abstract QueryResult findPage(Pagination pagination, Map orders);
	
	public abstract List findList(Integer dataNum, Map orders);

	/** 充血实现end */

}