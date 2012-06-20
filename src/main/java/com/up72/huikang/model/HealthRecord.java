/*
 * Powered By [up72-framework]
 * Web Site: http://www.up72.com
 * Since 2006 - 2012
 */

package com.up72.huikang.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import com.up72.service.util.BaseBeanFactory;
import com.up72.web.util.DateUtils;
import com.up72.web.util.Pagination;
import com.up72.web.util.QueryResult;

/**
 * 健康管理
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_health_record")
public class HealthRecord implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// alias
	public static final String TABLE_ALIAS = "健康管理";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_PATIENT_ID = "患者编号";
	public static final String ALIAS_WORK_ORDER_ID = "工作单编号";
	public static final String ALIAS_BEGIN_DATE = "开始时间";
	public static final String ALIAS_END_DATE = "结束时间";

	// date formats
	public static final String FORMAT_BEGIN_DATE = "yyyy-MM-dd";
	public static final String FORMAT_END_DATE = "yyyy-MM-dd";

	// columns START
	/** 编号 */
	private java.lang.Integer id;

	/** 患者编号 */
	private java.lang.String patientId;

	/** 工作单编号 */
	private java.lang.String workOrderId;

	/** 开始时间 */
	private java.lang.String beginDate;

	/** 结束时间 */
	private java.lang.String endDate;

	// columns END

	public HealthRecord() {
	}

	public HealthRecord(java.lang.Integer id) {
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

	@Column(name = "patient_id", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getPatientId() {
		return this.patientId;
	}

	public void setPatientId(java.lang.String value) {
		this.patientId = value;
	}

	@Column(name = "work_order_id", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getWorkOrderId() {
		return this.workOrderId;
	}

	public void setWorkOrderId(java.lang.String value) {
		this.workOrderId = value;
	}

	@Column(name = "begin_date", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getBeginDate() {
		return this.beginDate;
	}

	public void setBeginDate(java.lang.String value) {
		this.beginDate = value;
	}

	@Column(name = "end_date", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getEndDate() {
		return this.endDate;
	}

	public void setEndDate(java.lang.String value) {
		this.endDate = value;
	}

	/** 充血实现begin */
	@Transient
	public HealthRecord getHealthRecord() {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HealthRecord result = null;
		if (this.id != null) {
			result = (HealthRecord) d.get(HealthRecord.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
		// BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from HealthRecord where 1 = 1";

		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
		}
		if (ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
		}
		if (ObjectUtils.isNotEmpty(this.getBeginDate())) {
			params.put(" beginDate", this.getBeginDate());
		}
		if (ObjectUtils.isNotEmpty(this.getEndDate())) {
			params.put(" endDate", this.getEndDate());
		}

		QueryResult result = d.findPage(hql, params, pagination, orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from HealthRecord where 1 = 1";
		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getPatientId())) {
			params.put(" patientId", this.getPatientId());
		}
		if (ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
		}
		if (ObjectUtils.isNotEmpty(this.getBeginDate())) {
			params.put(" beginDate", this.getBeginDate());
		}
		if (ObjectUtils.isNotEmpty(this.getEndDate())) {
			params.put(" endDate", this.getEndDate());
		}
		List result = d.findList(hql, params, dataNum);
		return result;
	}

	/** 充血实现begin */

	// public String toString() {
	// return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
	// .append("Id", getId()).append("PatientId", getPatientId())
	// .append("WorkOrderId", getWorkOrderId()).append("BeginDate",
	// getBeginDate()).append("EndDate", getEndDate()).append(
	// "ProjectId", getProjectId());
	// }
	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	public boolean equals(Object obj) {
		if (obj instanceof HealthRecord == false)
			return false;
		if (this == obj)
			return true;
		HealthRecord other = (HealthRecord) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}

	@Transient
	public Map<String, HealthProject> getItemMap() {
		Map<String, HealthProject> result = new HashMap<String, HealthProject>();
		for (HealthProject pro : getHealthProjectList()) {
			if (pro != null) {
				result.put(pro.getName(), pro);
			}
		}
		return result;
	}

	@Transient
	@SuppressWarnings("unchecked")
	public List<HealthProject> getHealthProjectList() {
		List<HealthProject> result = null;
		if (this.id != null && this.id != 0) {
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
					.getBean("commonDAOHibernate");
			String hql = "from HealthProject h where h.recordId = " + this.id;
			result = d.find(hql, null);
		}
		return result;
	}

	@Transient
	@SuppressWarnings("unchecked")
	public HealthProject getHealthProject() {
		HealthProject result = null;
		if (this.id != null && this.id != 0) {
			CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
					.getBean("commonDAOHibernate");
			String hql = "from HealthProject h where h.recordId = " + this.id;
			List<HealthProject> healthProjectList = d.find(hql, null);
			for (int i = 0; i < healthProjectList.size(); i++) {
				result = healthProjectList.get(i);
			}
		}
		return result;
	}
	@Transient
	@SuppressWarnings("unchecked")
	public String getFormatbBeginDate() throws ParseException{
		String result  = this.beginDate.replaceAll("-", "/");
		return result;
	} 
	@Transient
	@SuppressWarnings("unchecked")
	public String getFormatbEndDate() throws ParseException{
		
		String result = this.endDate.replace("-", "/").substring(4);
		return result;
	} 
}
