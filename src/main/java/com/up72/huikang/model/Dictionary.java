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
 * 数据字典
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "sys_dictionary")
public class Dictionary implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// alias
	public static final String TABLE_ALIAS = "数据字典";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "名称";
	public static final String ALIAS_REF_CODE = "引用值";
	public static final String ALIAS_SORT = "排序";
	public static final String ALIAS_DESCRIPTION = "描述";
	public static final String ALIAS_DICTIONARY_ID = "父类编号";
	public static final String ALIAS_VALUE = "字典值";

	// date formats

	// columns START
	/** */
	private java.lang.Long id;

	/** */
	private java.lang.String name;

	/** */
	private java.lang.String refCode;

	/** */
	private java.lang.Integer sort;

	/** */
	private java.lang.String description;

	/** */
	private java.lang.Long dictionaryId;

	/** */
	private java.lang.String value;

	private java.lang.String path;
	
	// columns END

	public Dictionary() {
	}

	public Dictionary(java.lang.Long id) {
		this.id = id;
	}

	public void setId(java.lang.Long value) {
		this.id = value;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}

	@Column(name = "NAME", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getName() {
		return this.name;
	}

	public void setName(java.lang.String value) {
		this.name = value;
	}

	@Column(name = "REF_CODE", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getRefCode() {
		return this.refCode;
	}

	public void setRefCode(java.lang.String value) {
		this.refCode = value;
	}

	@Column(name = "SORT", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getSort() {
		return this.sort;
	}

	public void setSort(java.lang.Integer value) {
		this.sort = value;
	}

	@Column(name = "DESCRIPTION", unique = false, nullable = true, insertable = true, updatable = true, length = 65535)
	public java.lang.String getDescription() {
		return this.description;
	}

	public void setDescription(java.lang.String value) {
		this.description = value;
	}

	@Column(name = "DICTIONARY_ID", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDictionaryId() {
		return this.dictionaryId;
	}

	public void setDictionaryId(java.lang.Long value) {
		this.dictionaryId = value;
	}

	@Column(name = "VALUE", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getValue() {
		return this.value;
	}

	public void setValue(java.lang.String value) {
		this.value = value;
	}
	
	@Column(name = "PATH", unique = false, nullable = true, insertable = true, updatable = true, length = 500)
	public java.lang.String getPath() {
		return this.path;
	}

	public void setPath(java.lang.String path) {
		this.path = path;
	}
	
	
	/** 充血实现begin */
	@Transient
	public Dictionary getDictionary() {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		Dictionary result = null;
		if (this.id != null) {
			result = (Dictionary) d.get(Dictionary.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
		// BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from Dictionary where 1 = 1";

		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
		}
		if (ObjectUtils.isNotEmpty(this.getRefCode())) {
			params.put(" refCode", this.getRefCode());
		}
		if (ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
		}
		if (ObjectUtils.isNotEmpty(this.getDescription())) {
			params.put(" description", this.getDescription());
		}
		if (ObjectUtils.isNotEmpty(this.getDictionaryId())) {
			params.put(" dictionaryId", this.getDictionaryId());
		}
		if (ObjectUtils.isNotEmpty(this.getValue())) {
			params.put(" value", this.getValue());
		}

		QueryResult result = d.findPage(hql, params, pagination, orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from Dictionary where 1 = 1";
		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
		}
		if (ObjectUtils.isNotEmpty(this.getRefCode())) {
			params.put(" refCode", this.getRefCode());
		}
		if (ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
		}
		if (ObjectUtils.isNotEmpty(this.getDescription())) {
			params.put(" description", this.getDescription());
		}
		if (ObjectUtils.isNotEmpty(this.getDictionaryId())) {
			params.put(" dictionaryId", this.getDictionaryId());
		}
		if (ObjectUtils.isNotEmpty(this.getValue())) {
			params.put(" value", this.getValue());
		}
		List result = d.findList(hql, params, dataNum);
		return result;
	}

	/** 充血实现begin */

	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
				.append("Id", getId()).append("Name", getName()).append(
						"RefCode", getRefCode()).append("Sort", getSort())
				.append("Description", getDescription()).append("DictionaryId",
						getDictionaryId()).append("Value", getValue())
				.toString();
	}

	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	public boolean equals(Object obj) {
		if (obj instanceof Dictionary == false)
			return false;
		if (this == obj)
			return true;
		Dictionary other = (Dictionary) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}

	/**
	 * 判断该节点是否是父节点
	 * 
	 * @return
	 */
	@Transient
	public boolean isParent() {
		if (getId() != null && 0 != getId()) {
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
					.getBean("commonDAOHibernate");
			Long count = d
					.findcount("select count(id) from Dictionary where dictionaryId = "
							+ this.getId());
			if (count > 0) {
				return true;
			}
		}
		return false;
	}
}
