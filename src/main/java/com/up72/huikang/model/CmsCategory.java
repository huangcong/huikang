
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
 * 资源栏目
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "sys_cms_category")
public class CmsCategory implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "资源栏目";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_CMS_CATEGORY_ID = "父栏目编号";
	public static final String ALIAS_ROOT_CATEGORY_ID = "根栏目编号";
	public static final String ALIAS_NAME = "名称";
	public static final String ALIAS_IMG_PATH = "栏目图片";
	public static final String ALIAS_DESCRIPTION = "描述";
	public static final String ALIAS_PATH = "栏目路径";
	public static final String ALIAS_LEVEL = "栏目级别";
	public static final String ALIAS_ENABLE = "是否启用";
	public static final String ALIAS_SORT = "排序";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 父栏目编号*/
	private java.lang.Long cmsCategoryId;
	
	/** 根栏目编号*/
	private java.lang.Long rootCategoryId;
	
	/** 名称*/
	private java.lang.String name;
	
	/** 栏目图片*/
	private java.lang.String imgPath;
	
	/** 描述*/
	private java.lang.String description;
	
	/** 栏目路径*/
	private java.lang.String path;
	
	/** 栏目级别*/
	private java.lang.Integer level;
	
	/** 是否启用*/
	private Integer enable;
	
	/** 排序*/
	private java.lang.Integer sort;
	
	//columns END


	public CmsCategory(){
	}

	public CmsCategory(
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
	
	@Column(name = "cms_category_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCmsCategoryId() {
		return this.cmsCategoryId;
	}
	
	public void setCmsCategoryId(java.lang.Long value) {
		this.cmsCategoryId = value;
	}
	
	@Column(name = "root_category_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getRootCategoryId() {
		return this.rootCategoryId;
	}
	
	public void setRootCategoryId(java.lang.Long value) {
		this.rootCategoryId = value;
	}
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "img_path", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getImgPath() {
		return this.imgPath;
	}
	
	public void setImgPath(java.lang.String value) {
		this.imgPath = value;
	}
	
	@Column(name = "description", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	@Column(name = "path", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getPath() {
		return this.path;
	}
	
	public void setPath(java.lang.String value) {
		this.path = value;
	}
	
	@Column(name = "level", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getLevel() {
		return this.level;
	}
	
	public void setLevel(java.lang.Integer value) {
		this.level = value;
	}
	
	@Column(name = "enable", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getEnable() {
		return this.enable;
	}
	
	public void setEnable(Integer value) {
		this.enable = value;
	}
	
	@Column(name = "sort", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getSort() {
		return this.sort;
	}
	
	public void setSort(java.lang.Integer value) {
		this.sort = value;
	}
	

/** 充血实现begin */
	@Transient
	public CmsCategory getCmsCategory() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		CmsCategory result = null;
		if(this.id != null){
			result = (CmsCategory)d.get(CmsCategory.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from CmsCategory where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCmsCategoryId())) {
			params.put(" cmsCategoryId", this.getCmsCategoryId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRootCategoryId())) {
			params.put(" rootCategoryId", this.getRootCategoryId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getImgPath())) {
			params.put(" imgPath", this.getImgPath());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDescription())) {
			params.put(" description", this.getDescription());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPath())) {
			params.put(" path", this.getPath());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLevel())) {
			params.put(" level", this.getLevel());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEnable())) {
			params.put(" enable", this.getEnable());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from CmsCategory where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCmsCategoryId())) {
			params.put(" cmsCategoryId", this.getCmsCategoryId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRootCategoryId())) {
			params.put(" rootCategoryId", this.getRootCategoryId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getImgPath())) {
			params.put(" imgPath", this.getImgPath());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDescription())) {
			params.put(" description", this.getDescription());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPath())) {
			params.put(" path", this.getPath());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLevel())) {
			params.put(" level", this.getLevel());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEnable())) {
			params.put(" enable", this.getEnable());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("CmsCategoryId",getCmsCategoryId())
			.append("RootCategoryId",getRootCategoryId())
			.append("Name",getName())
			.append("ImgPath",getImgPath())
			.append("Description",getDescription())
			.append("Path",getPath())
			.append("Level",getLevel())
			.append("Enable",getEnable())
			.append("Sort",getSort())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsCategory == false) return false;
		if(this == obj) return true;
		CmsCategory other = (CmsCategory)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

