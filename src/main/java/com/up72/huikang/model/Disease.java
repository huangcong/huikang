
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
 * 病种
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_disease")
public class Disease implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "病种";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_CODE = "病种代码";
	public static final String ALIAS_PARENT_ID = "父类病种";
	public static final String ALIAS_ROOT_ID = "根病种";
	public static final String ALIAS_PATH = "病种路径";
	public static final String ALIAS_NAME = "名称";
	public static final String ALIAS_VALIDABLE = "是否有效";
	public static final String ALIAS_GB_NAME = "国标名称";
	public static final String ALIAS_TYPE = "疾病类别";
	public static final String ALIAS_DIAGNOSE_RULE = "确诊规则";
	public static final String ALIAS_URGENT_RULE = "高危规则";
	public static final String ALIAS_RISK_RULE = "中危规则";
	public static final String ALIAS_NORMAL_RULE = "正常规则";
	public static final String ALIAS_URL = "应急处理链接";
	
	//date formats
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 病种代码*/
	private java.lang.String code;
	
	/** 父类病种*/
	private java.lang.Long parentId;
	
	/** 根病种*/
	private java.lang.Long rootId;
	
	/** 病种路径*/
	private java.lang.String path;
	
	/** 名称*/
	private java.lang.String name;
	
	/** 是否有效*/
	private Integer validable;
	
	/** 国标名称*/
	private java.lang.String gbName;
	
	/** 疾病类别*/
	private java.lang.Long type;
	
	/** 确诊规则*/
	private java.lang.String diagnoseRule;
	
	/** 高危规则*/
	private java.lang.String urgentRule;
	
	/** 中危规则*/
	private java.lang.String riskRule;
	
	/** 正常规则*/
	private java.lang.String normalRule;
	
	/** 应急处理链接*/
	private java.lang.String url;
	
	//columns END


	public Disease(){
	}

	public Disease(
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
	
	@Column(name = "code", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	public java.lang.String getCode() {
		return this.code;
	}
	
	public void setCode(java.lang.String value) {
		this.code = value;
	}
	
	@Column(name = "parent_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getParentId() {
		return this.parentId;
	}
	
	public void setParentId(java.lang.Long value) {
		this.parentId = value;
	}
	
	@Column(name = "root_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getRootId() {
		return this.rootId;
	}
	
	public void setRootId(java.lang.Long value) {
		this.rootId = value;
	}
	
	@Column(name = "path", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getPath() {
		return this.path;
	}
	
	public void setPath(java.lang.String value) {
		this.path = value;
	}
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "validable", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getValidable() {
		return this.validable;
	}
	
	public void setValidable(Integer value) {
		this.validable = value;
	}
	
	@Column(name = "gb_name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getGbName() {
		return this.gbName;
	}
	
	public void setGbName(java.lang.String value) {
		this.gbName = value;
	}
	
	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getType() {
		return this.type;
	}
	
	public void setType(java.lang.Long value) {
		this.type = value;
	}
	
	@Column(name = "diagnose_rule", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getDiagnoseRule() {
		return this.diagnoseRule;
	}
	
	public void setDiagnoseRule(java.lang.String value) {
		this.diagnoseRule = value;
	}
	
	@Column(name = "urgent_rule", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getUrgentRule() {
		return this.urgentRule;
	}
	
	public void setUrgentRule(java.lang.String value) {
		this.urgentRule = value;
	}
	
	@Column(name = "risk_rule", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getRiskRule() {
		return this.riskRule;
	}
	
	public void setRiskRule(java.lang.String value) {
		this.riskRule = value;
	}
	
	@Column(name = "normal_rule", unique = false, nullable = false, insertable = true, updatable = true, length = 255)
	public java.lang.String getNormalRule() {
		return this.normalRule;
	}
	
	public void setNormalRule(java.lang.String value) {
		this.normalRule = value;
	}
	
	@Column(name = "url", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getUrl() {
		return this.url;
	}
	
	public void setUrl(java.lang.String value) {
		this.url = value;
	}
	

/** 充血实现begin */
	@Transient
	public Disease getDisease() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		Disease result = null;
		if(this.id != null){
			result = (Disease)d.get(Disease.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Disease where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCode())) {
			params.put(" code", this.getCode());
	    }
	    if(ObjectUtils.isNotEmpty(this.getParentId())) {
			params.put(" parentId", this.getParentId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRootId())) {
			params.put(" rootId", this.getRootId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPath())) {
			params.put(" path", this.getPath());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getValidable())) {
			params.put(" validable", this.getValidable());
	    }
	    if(ObjectUtils.isNotEmpty(this.getGbName())) {
			params.put(" gbName", this.getGbName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDiagnoseRule())) {
			params.put(" diagnoseRule", this.getDiagnoseRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getUrgentRule())) {
			params.put(" urgentRule", this.getUrgentRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRiskRule())) {
			params.put(" riskRule", this.getRiskRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getNormalRule())) {
			params.put(" normalRule", this.getNormalRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getUrl())) {
			params.put(" url", this.getUrl());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Disease where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCode())) {
			params.put(" code", this.getCode());
	    }
	    if(ObjectUtils.isNotEmpty(this.getParentId())) {
			params.put(" parentId", this.getParentId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRootId())) {
			params.put(" rootId", this.getRootId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getPath())) {
			params.put(" path", this.getPath());
	    }
	    if(ObjectUtils.isNotEmpty(this.getName())) {
			params.put(" name", this.getName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getValidable())) {
			params.put(" validable", this.getValidable());
	    }
	    if(ObjectUtils.isNotEmpty(this.getGbName())) {
			params.put(" gbName", this.getGbName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDiagnoseRule())) {
			params.put(" diagnoseRule", this.getDiagnoseRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getUrgentRule())) {
			params.put(" urgentRule", this.getUrgentRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getRiskRule())) {
			params.put(" riskRule", this.getRiskRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getNormalRule())) {
			params.put(" normalRule", this.getNormalRule());
	    }
	    if(ObjectUtils.isNotEmpty(this.getUrl())) {
			params.put(" url", this.getUrl());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Code",getCode())
			.append("ParentId",getParentId())
			.append("RootId",getRootId())
			.append("Path",getPath())
			.append("Name",getName())
			.append("Validable",getValidable())
			.append("GbName",getGbName())
			.append("Type",getType())
			.append("DiagnoseRule",getDiagnoseRule())
			.append("UrgentRule",getUrgentRule())
			.append("RiskRule",getRiskRule())
			.append("NormalRule",getNormalRule())
			.append("Url",getUrl())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Disease == false) return false;
		if(this == obj) return true;
		Disease other = (Disease)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

