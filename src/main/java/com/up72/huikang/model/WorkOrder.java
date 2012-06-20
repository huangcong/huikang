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
import com.up72.framework.util.ObjectUtils;
import com.up72.framework.util.holder.ApplicationContextHolder;
import com.up72.service.util.BaseBeanFactory;
import com.up72.web.util.DateUtils;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;

/**
 * 工作单
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_work_order")
public class WorkOrder implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// alias
	public static final String TABLE_ALIAS = "工作单";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_PATIENT_ID = "患者编号";
	public static final String ALIAS_LEVEL = "工作单级别";
	public static final String ALIAS_STATUS = "工作单状态";
	public static final String ALIAS_SOURCE = "来源";
	public static final String ALIAS_DOCTOR_ID = "负责医生";
	public static final String ALIAS_DISEASES = "病种";
	public static final String ALIAS_CREATE_TIME = "创建时间";
	public static final String ALIAS_UPDATE_TIME = "更新时间";

	// date formats
	public static final String FORMAT_CREATE_TIME = "yyyy-MM-dd";
	public static final String FORMAT_UPDATE_TIME = "yyyy-MM-dd";

	// columns START
	/** 编号 */
	private java.lang.Long id;

	/** 患者编号 */
	private java.lang.Long patientId;

	/** 工作单级别 */
	private java.lang.Long level; //0低危，1中危险，2高危

	/** 工作单状态 */
	private java.lang.Long status;//0未处理，1正处理,2已处理

	/** 来源 */
	private java.lang.Long source;//0系统导入，1日程

	/** 负责医生 */
	private java.lang.Long doctorId;

	/** 病种 */
	private java.lang.String diseases;

	/** 创建时间 */
	private java.lang.Long createTime;

	/** 更新时间 */
	private java.lang.Long updateTime;

	// columns END

	public WorkOrder() {
	}

	public WorkOrder(java.lang.Long id) {
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

	@Column(name = "level", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.Long getLevel() {
		return this.level;
	}

	public void setLevel(java.lang.Long value) {
		this.level = value;
	}

	@Column(name = "status", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.Long getStatus() {
		return this.status;
	}

	public void setStatus(java.lang.Long value) {
		this.status = value;
	}

	@Column(name = "source", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getSource() {
		return this.source;
	}

	public void setSource(java.lang.Long value) {
		this.source = value;
	}

	@Column(name = "doctor_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDoctorId() {
		return this.doctorId;
	}

	public void setDoctorId(java.lang.Long value) {
		this.doctorId = value;
	}

	@Column(name = "diseases", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getDiseases() {
		return this.diseases;
	}

	public void setDiseases(java.lang.String value) {
		this.diseases = value;
	}

	@Transient
	public String getCreateTimeString() {
		return DateUtils.format(getCreateTime(), FORMAT_CREATE_TIME);
	}

	@Transient
	public Date getCreateTimeDate() {
		return DateUtils.longToDate(this.createTime);
	}

	@Column(name = "create_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(java.lang.Long value) {
		this.createTime = value;
	}

	@Transient
	public String getUpdateTimeString() {
		return DateUtils.format(getUpdateTime(), FORMAT_UPDATE_TIME);
	}

	@Transient
	public Date getUpdateTimeDate() {
		return DateUtils.longToDate(this.updateTime);
	}

	@Column(name = "update_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(java.lang.Long value) {
		this.updateTime = value;
	}

	/** 充血实现begin */
	@Transient
	public WorkOrder getWorkOrder() {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		WorkOrder result = null;
		if (this.id != null) {
			result = (WorkOrder) d.get(WorkOrder.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
		// BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from WorkOrder where 1 = 1";

		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
		}
		if (ObjectUtils.isNotEmpty(this.getLevel())) {
			params.put(" level", this.getLevel());
		}
		if (ObjectUtils.isNotEmpty(this.getStatus())) {
			params.put(" status", this.getStatus());
		}
		if (ObjectUtils.isNotEmpty(this.getSource())) {
			params.put(" source", this.getSource());
		}
		if (ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
		}
		if (ObjectUtils.isNotEmpty(this.getDiseases())) {
			params.put(" diseases", this.getDiseases());
		}
		if (ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
		}
		if (ObjectUtils.isNotEmpty(this.getUpdateTime())) {
			params.put(" updateTime", this.getUpdateTime());
		}

		QueryResult result = d.findPage(hql, params, pagination, orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from WorkOrder where 1 = 1";
		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
		}
		if (ObjectUtils.isNotEmpty(this.getLevel())) {
			params.put(" level", this.getLevel());
		}
		if (ObjectUtils.isNotEmpty(this.getStatus())) {
			params.put(" status", this.getStatus());
		}
		if (ObjectUtils.isNotEmpty(this.getSource())) {
			params.put(" source", this.getSource());
		}
		if (ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
		}
		if (ObjectUtils.isNotEmpty(this.getDiseases())) {
			params.put(" diseases", this.getDiseases());
		}
		if (ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
		}
		if (ObjectUtils.isNotEmpty(this.getUpdateTime())) {
			params.put(" updateTime", this.getUpdateTime());
		}
		List result = d.findList(hql, params, dataNum);
		return result;
	}

	/** 充血实现begin */

	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
				.append("Id", getId()).append("PatientId", getPatientId())
				.append("Level", getLevel()).append("Status", getStatus())
				.append("Source", getSource())
				.append("DoctorId", getDoctorId()).append("Diseases",
						getDiseases()).append("CreateTime", getCreateTime())
				.append("UpdateTime", getUpdateTime()).toString();
	}

	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	@Transient
	@SuppressWarnings("unchecked")
	public Patient getPatient() {
		Patient result = null;
		if (this.patientId != null && this.patientId != 0) {
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
					.getBean("commonDAOHibernate");
			result = (Patient) d.get(Patient.class, this.patientId);
		}
		return result;
	}
	@Transient
	@SuppressWarnings("unchecked")
	public List<WorkDisease> getWorkDiseaseList(){
		List<WorkDisease> result = null;
		if(this.id != null && this.id != 0){
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
			.getBean("commonDAOHibernate");
			String hql = "from WorkDisease w where w.workId = "+ this.id;
			result = d.find(hql, null);
			}
		return result;
	}
	
	public boolean equals(Object obj) {
		if (obj instanceof WorkOrder == false)
			return false;
		if (this == obj)
			return true;
		WorkOrder other = (WorkOrder) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}
