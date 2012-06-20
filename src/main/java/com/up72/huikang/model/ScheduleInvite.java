
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
 * 日程邀请人
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_schedule_invite")
public class ScheduleInvite implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "日程邀请人";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_SCHEDULE_ID = "日程编号";
	public static final String ALIAS_INVITE_TYPE = "邀请人类型（医生，患者）";
	public static final String ALIAS_WORK_ORDER_ID = "工作单编号";
	public static final String ALIAS_INVITE_ID = "邀请人编号";
	public static final String ALIAS_INVITE_NAME = "邀请人姓名";
	public static final String ALIAS_CREATE_TIME = "添加时间";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = "yyyy-MM-dd";
	

	
	//columns START
	/** 编号*/
	private java.lang.Integer id;
	
	/** 日程编号*/
	private java.lang.Long scheduleId;
	
	/** 邀请人类型（医生，患者）*/
	private java.lang.String inviteType;
	
	/** 工作单编号*/
	private java.lang.Long workOrderId;
	
	/** 邀请人编号*/
	private java.lang.Long inviteId;
	
	/** 邀请人姓名*/
	private java.lang.String inviteName;
	
	/** 添加时间*/
	private java.lang.Long createTime;
	
	//columns END


	public ScheduleInvite(){
	}

	public ScheduleInvite(
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
	
	@Column(name = "schedule_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getScheduleId() {
		return this.scheduleId;
	}
	
	public void setScheduleId(java.lang.Long value) {
		this.scheduleId = value;
	}
	
	@Column(name = "invite_type", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getInviteType() {
		return this.inviteType;
	}
	
	public void setInviteType(java.lang.String value) {
		this.inviteType = value;
	}
	
	@Column(name = "work_order_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getWorkOrderId() {
		return this.workOrderId;
	}
	
	public void setWorkOrderId(java.lang.Long value) {
		this.workOrderId = value;
	}
	
	@Column(name = "invite_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getInviteId() {
		return this.inviteId;
	}
	
	public void setInviteId(java.lang.Long value) {
		this.inviteId = value;
	}
	
	@Column(name = "invite_name", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	public java.lang.String getInviteName() {
		return this.inviteName;
	}
	
	public void setInviteName(java.lang.String value) {
		this.inviteName = value;
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
	

/** 充血实现begin */
	@Transient
	public ScheduleInvite getScheduleInvite() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		ScheduleInvite result = null;
		if(this.id != null){
			result = (ScheduleInvite)d.get(ScheduleInvite.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from ScheduleInvite where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getScheduleId())) {
			params.put(" scheduleId", this.getScheduleId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteType())) {
			params.put(" inviteType", this.getInviteType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteId())) {
			params.put(" inviteId", this.getInviteId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteName())) {
			params.put(" inviteName", this.getInviteName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
	    }
		
		QueryResult result = d.findPage(hql,params,pagination,orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from ScheduleInvite where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getScheduleId())) {
			params.put(" scheduleId", this.getScheduleId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteType())) {
			params.put(" inviteType", this.getInviteType());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteId())) {
			params.put(" inviteId", this.getInviteId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getInviteName())) {
			params.put(" inviteName", this.getInviteName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getCreateTime())) {
			params.put(" createTime", this.getCreateTime());
	    }
		List result = d.findList(hql,params,dataNum);
		return result;
	}
/** 充血实现begin */	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("ScheduleId",getScheduleId())
			.append("InviteType",getInviteType())
			.append("WorkOrderId",getWorkOrderId())
			.append("InviteId",getInviteId())
			.append("InviteName",getInviteName())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof ScheduleInvite == false) return false;
		if(this == obj) return true;
		ScheduleInvite other = (ScheduleInvite)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

