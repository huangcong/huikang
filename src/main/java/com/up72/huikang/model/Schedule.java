
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
 * 日程计划
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_schedule")
public class Schedule implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "日程计划";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_DOCTOR_ID = "医生编号";
	public static final String ALIAS_TITLE = "标题";
	public static final String ALIAS_CONTENT = "内容";
	public static final String ALIAS_ADDRESS = "地点";
	public static final String ALIAS_TYPE = "类型(私人，公共，培训，预约)";
	public static final String ALIAS_LECTURER_IDS = "讲师编号";
	public static final String ALIAS_LECTURER_NAMES = "讲师姓名";
	public static final String ALIAS_MAX_NUM = "最大人数";
	public static final String ALIAS_MIN_NUM = "最小人数";
	public static final String ALIAS_INVITE_NUM = "已邀请人数";
	public static final String ALIAS_WORK_ORDER_ID = "关联工作单";
	public static final String ALIAS_SCHEDULE_DATE = "日程日期";
	public static final String ALIAS_CREATE_TIME = "创建时间";
	public static final String ALIAS_START_TIME = "开始时间";
	public static final String ALIAS_END_TIME = "结束时间";
	
	//date formats
	public static final String FORMAT_SCHEDULE_DATE = "yyyy-MM-dd";
	public static final String FORMAT_CREATE_TIME = "yyyy-MM-dd";
	public static final String FORMAT_START_TIME = "yyyy-MM-dd";
	public static final String FORMAT_END_TIME = "yyyy-MM-dd";
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 医生编号*/
	private java.lang.Long doctorId;
	
	/** 标题*/
	private java.lang.String title;
	
	/** 内容*/
	private java.lang.String content;
	
	/** 地点*/
	private java.lang.String address;
	
	/** 类型(私人，公共，培训，预约)*/
	private java.lang.String type;
	
	/** 讲师编号*/
	private java.lang.String lecturerIds;
	
	/** 讲师姓名*/
	private java.lang.String lecturerNames;
	
	/** 最大人数*/
	private java.lang.Integer maxNum;
	
	/** 最小人数*/
	private java.lang.Integer minNum;
	
	/** 已邀请人数*/
	private java.lang.Integer inviteNum;
	
	/** 关联工作单*/
	private java.lang.Long workOrderId;
	
	/** 日程日期*/
	private java.lang.Long scheduleDate;
	
	/** 创建时间*/
	private java.lang.Long createTime;
	
	/** 开始时间*/
	private java.lang.Long startTime;
	
	/** 结束时间*/
	private java.lang.Long endTime;
	
	//columns END


	public Schedule(){
	}

	public Schedule(
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
	
	@Column(name = "doctor_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getDoctorId() {
		return this.doctorId;
	}
	
	public void setDoctorId(java.lang.Long value) {
		this.doctorId = value;
	}
	
	@Column(name = "title", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getTitle() {
		return this.title;
	}
	
	public void setTitle(java.lang.String value) {
		this.title = value;
	}
	
	@Column(name = "content", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	@Column(name = "address", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getAddress() {
		return this.address;
	}
	
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getType() {
		return this.type;
	}
	
	public void setType(java.lang.String value) {
		this.type = value;
	}
	
	@Column(name = "lecturer_ids", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getLecturerIds() {
		return this.lecturerIds;
	}
	
	public void setLecturerIds(java.lang.String value) {
		this.lecturerIds = value;
	}
	
	@Column(name = "lecturer_names", unique = false, nullable = false, insertable = true, updatable = true, length = 1000)
	public java.lang.String getLecturerNames() {
		return this.lecturerNames;
	}
	
	public void setLecturerNames(java.lang.String value) {
		this.lecturerNames = value;
	}
	
	@Column(name = "max_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getMaxNum() {
		return this.maxNum;
	}
	
	public void setMaxNum(java.lang.Integer value) {
		this.maxNum = value;
	}
	
	@Column(name = "min_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getMinNum() {
		return this.minNum;
	}
	
	public void setMinNum(java.lang.Integer value) {
		this.minNum = value;
	}
	
	@Column(name = "invite_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getInviteNum() {
		return this.inviteNum;
	}
	
	public void setInviteNum(java.lang.Integer value) {
		this.inviteNum = value;
	}
	
	@Column(name = "work_order_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getWorkOrderId() {
		return this.workOrderId;
	}
	
	public void setWorkOrderId(java.lang.Long value) {
		this.workOrderId = value;
	}
	
	@Transient
	public String getScheduleDateString() {
		return DateUtils.format(getScheduleDate(), FORMAT_SCHEDULE_DATE);
	}
	
	@Column(name = "schedule_date", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getScheduleDate() {
		return this.scheduleDate;
	}
	
	public void setScheduleDate(java.lang.Long value) {
		this.scheduleDate = value;
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
	public String getStartTimeString() {
		return DateUtils.format(getStartTime(), FORMAT_START_TIME);
	}
	@Transient
	public Date getStartTimeDate() {
		return DateUtils.longToDate(this.startTime);
	}
	@Column(name = "start_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getStartTime() {
		return this.startTime;
	}
	
	public void setStartTime(java.lang.Long value) {
		this.startTime = value;
	}
	
	@Transient
	public String getEndTimeString() {
		return DateUtils.format(getEndTime(), FORMAT_END_TIME);
	}
	
	@Transient
	public Date getEndTimeDate() {
		return DateUtils.longToDate(this.endTime);
	}
	@Column(name = "end_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getEndTime() {
		return this.endTime;
	}
	
	public void setEndTime(java.lang.Long value) {
		this.endTime = value;
	}
	

/** 充血实现begin */
	@Transient
	public Schedule getSchedule() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		Schedule result = null;
		if(this.id != null){
			result = (Schedule)d.get(Schedule.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Schedule where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getTitle())) {
			params.put(" title", this.getTitle());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
	    }
	    if(ObjectUtils.isNotEmpty(this.getAddress())) {
			params.put(" address", this.getAddress());
	    }
	    if(ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLecturerIds())) {
			params.put(" lecturerIds", this.getLecturerIds());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLecturerNames())) {
			params.put(" lecturerNames", this.getLecturerNames());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMaxNum())) {
			params.put(" maxNum", this.getMaxNum());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMinNum())) {
			params.put(" minNum", this.getMinNum());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteNum())) {
			params.put(" inviteNum", this.getInviteNum());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getScheduleDate())) {
			params.put(" scheduleDate", this.getScheduleDate());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
	    }
	    if(ObjectUtils.isNotEmpty(this.getStartTime())) {
			params.put(" startTime", this.getStartTime());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEndTime())) {
			params.put(" endTime", this.getEndTime());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from Schedule where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getDoctorId())) {
			params.put(" doctorId", this.getDoctorId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getTitle())) {
			params.put(" title", this.getTitle());
	    }
	    if(ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
	    }
	    if(ObjectUtils.isNotEmpty(this.getAddress())) {
			params.put(" address", this.getAddress());
	    }
	    if(ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLecturerIds())) {
			params.put(" lecturerIds", this.getLecturerIds());
	    }
	    if(ObjectUtils.isNotEmpty(this.getLecturerNames())) {
			params.put(" lecturerNames", this.getLecturerNames());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMaxNum())) {
			params.put(" maxNum", this.getMaxNum());
	    }
	    if(ObjectUtils.isNotEmpty(this.getMinNum())) {
			params.put(" minNum", this.getMinNum());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteNum())) {
			params.put(" inviteNum", this.getInviteNum());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getScheduleDate())) {
			params.put(" scheduleDate", this.getScheduleDate());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
	    }
	    if(ObjectUtils.isNotEmpty(this.getStartTime())) {
			params.put(" startTime", this.getStartTime());
	    }
	    if(ObjectUtils.isNotEmpty(this.getEndTime())) {
			params.put(" endTime", this.getEndTime());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("DoctorId",getDoctorId())
			.append("Title",getTitle())
			.append("Content",getContent())
			.append("Address",getAddress())
			.append("Type",getType())
			.append("LecturerIds",getLecturerIds())
			.append("LecturerNames",getLecturerNames())
			.append("MaxNum",getMaxNum())
			.append("MinNum",getMinNum())
			.append("InviteNum",getInviteNum())
			.append("WorkOrderId",getWorkOrderId())
			.append("ScheduleDate",getScheduleDate())
			.append("CreateTime",getCreateTime())
			.append("StartTime",getStartTime())
			.append("EndTime",getEndTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Schedule == false) return false;
		if(this == obj) return true;
		Schedule other = (Schedule)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

