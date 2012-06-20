/*
 * Powered By [up72-framework]
 * Web Site: http://www.up72.com
 * Since 2006 - 2012
 */

package com.up72.huikang.model;

import java.util.Date;
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
import com.up72.framework.util.DateConvertUtils;
import com.up72.framework.util.ObjectUtils;
import com.up72.framework.util.holder.ApplicationContextHolder;
import com.up72.web.util.DateUtils;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;

/**
 * 患者-病种
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_patient_disease")
public class PatientDisease implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// alias
	public static final String TABLE_ALIAS = "患者-病种";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_PATIENT_ID = "患者编号";
	public static final String ALIAS_DISEASE_ID = "病种编号";
	public static final String ALIAS_DIAGNOSE_TIME = "确诊时间";
	public static final String ALIAS_DIAGNOSE_ADDRESS = "确诊地点";
	public static final String ALIAS_FAMILY_HISTORY = "家族病史";
	public static final String ALIAS_YEARS = "患病年限";

	// date formats
	public static final String FORMAT_DIAGNOSE_TIME = "yyyy-MM-dd";

	// columns START
	/** 编号 */
	private java.lang.Long id;

	/** 患者编号 */
	private java.lang.Long patientId;

	/** 病种编号 */
	private java.lang.Long diseaseId;

	/** 确诊时间 */
	private java.lang.Long diagnoseTime;

	/** 确诊地点 */
	private java.lang.String diagnoseAddress;

	/** 家族病史 */
	private Integer familyHistory;

	/** 患病年限 */
	private java.lang.Integer years;

	// columns END

	public PatientDisease() {
	}

	public PatientDisease(java.lang.Long id) {
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

	@Column(name = "disease_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDiseaseId() {
		return this.diseaseId;
	}

	public void setDiseaseId(java.lang.Long value) {
		this.diseaseId = value;
	}

	@Transient
	public String getDiagnoseTimeString() {
		return DateUtils.format(getDiagnoseTime(), FORMAT_DIAGNOSE_TIME);
	}

	@Transient
	public Date getDiagnoseTimeDate() {
		return DateUtils.longToDate(this.diagnoseTime);
	}

	@Column(name = "diagnose_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDiagnoseTime() {
		return this.diagnoseTime;
	}

	public void setDiagnoseTime(java.lang.Long value) {
		this.diagnoseTime = value;
	}

	@Column(name = "diagnose_address", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getDiagnoseAddress() {
		return this.diagnoseAddress;
	}

	public void setDiagnoseAddress(java.lang.String value) {
		this.diagnoseAddress = value;
	}

	@Column(name = "family_history", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getFamilyHistory() {
		return this.familyHistory;
	}

	public void setFamilyHistory(Integer value) {
		this.familyHistory = value;
	}

	@Column(name = "years", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getYears() {
		return this.years;
	}

	public void setYears(java.lang.Integer value) {
		this.years = value;
	}

	/** 充血实现begin */
	@Transient
	public PatientDisease getPatientDisease() {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		PatientDisease result = null;
		if (this.id != null) {
			result = (PatientDisease) d.get(PatientDisease.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
		// BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from PatientDisease where 1 = 1";

		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
		}
		if (ObjectUtils.isNotEmpty(this.getDiseaseId())) {
			params.put(" diseaseId", this.getDiseaseId());
		}
		if (ObjectUtils.isNotEmpty(this.getDiagnoseTime())) {
			params.put(" diagnoseTime", this.getDiagnoseTime());
		}
		if (ObjectUtils.isNotEmpty(this.getDiagnoseAddress())) {
			params.put(" diagnoseAddress", this.getDiagnoseAddress());
		}
		if (ObjectUtils.isNotEmpty(this.getFamilyHistory())) {
			params.put(" familyHistory", this.getFamilyHistory());
		}
		if (ObjectUtils.isNotEmpty(this.getYears())) {
			params.put(" years", this.getYears());
		}

		QueryResult result = d.findPage(hql, params, pagination, orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from PatientDisease where 1 = 1";
		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
		}
		if (ObjectUtils.isNotEmpty(this.getDiseaseId())) {
			params.put(" diseaseId", this.getDiseaseId());
		}
		if (ObjectUtils.isNotEmpty(this.getDiagnoseTime())) {
			params.put(" diagnoseTime", this.getDiagnoseTime());
		}
		if (ObjectUtils.isNotEmpty(this.getDiagnoseAddress())) {
			params.put(" diagnoseAddress", this.getDiagnoseAddress());
		}
		if (ObjectUtils.isNotEmpty(this.getFamilyHistory())) {
			params.put(" familyHistory", this.getFamilyHistory());
		}
		if (ObjectUtils.isNotEmpty(this.getYears())) {
			params.put(" years", this.getYears());
		}
		List result = d.findList(hql, params, dataNum);
		return result;
	}

	/** 充血实现begin */

	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
				.append("Id", getId()).append("PatientId", getPatientId())
				.append("DiseaseId", getDiseaseId()).append("DiagnoseTime",
						getDiagnoseTime()).append("DiagnoseAddress",
						getDiagnoseAddress()).append("FamilyHistory",
						getFamilyHistory()).append("Years", getYears())
				.toString();
	}

	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	public boolean equals(Object obj) {
		if (obj instanceof PatientDisease == false)
			return false;
		if (this == obj)
			return true;
		PatientDisease other = (PatientDisease) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}
