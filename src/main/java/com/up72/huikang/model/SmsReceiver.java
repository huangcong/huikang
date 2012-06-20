
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
 * 短信收件人
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_sms_receiver")
public class SmsReceiver implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "短信收件人";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_SMS_ID = "短信编号";
	public static final String ALIAS_RECEIVE_ID = "收件人编号";
	public static final String ALIAS_WORK_ORDER_ID = "工作单编号";
	public static final String ALIAS_RECEIVE_NAME = "收件人名";
	public static final String ALIAS_RECEIVE_SMS = "收件人手机号";
	public static final String ALIAS_CREATE_TIME = "发送时间";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = "yyyy-MM-dd";
	

	
	//columns START
	/** 编号*/
	private java.lang.Long id;
	
	/** 短信编号*/
	private java.lang.Long smsId;
	
	/** 收件人编号*/
	private java.lang.Long receiveId;
	
	/** 工作单编号*/
	private java.lang.Long workOrderId;
	
	/** 收件人名*/
	private java.lang.String receiveName;
	
	/** 收件人手机号*/
	private java.lang.String receiveSms;
	
	/** 发送时间*/
	private java.lang.Long createTime;
	
	//columns END


	public SmsReceiver(){
	}

	public SmsReceiver(
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
	
	@Column(name = "sms_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getSmsId() {
		return this.smsId;
	}
	
	public void setSmsId(java.lang.Long value) {
		this.smsId = value;
	}
	
	@Column(name = "receive_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getReceiveId() {
		return this.receiveId;
	}
	
	public void setReceiveId(java.lang.Long value) {
		this.receiveId = value;
	}
	
	@Column(name = "work_order_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getWorkOrderId() {
		return this.workOrderId;
	}
	
	public void setWorkOrderId(java.lang.Long value) {
		this.workOrderId = value;
	}
	
	@Column(name = "receive_name", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getReceiveName() {
		return this.receiveName;
	}
	
	public void setReceiveName(java.lang.String value) {
		this.receiveName = value;
	}
	
	@Column(name = "receive_sms", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getReceiveSms() {
		return this.receiveSms;
	}
	
	public void setReceiveSms(java.lang.String value) {
		this.receiveSms = value;
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
	public SmsReceiver getSmsReceiver() {
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		SmsReceiver result = null;
		if(this.id != null){
			result = (SmsReceiver)d.get(SmsReceiver.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
//		BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d=(CommonDAOHibernate)ApplicationContextHolder.getBean("commonDAOHibernate");
		HashMap<String ,Object> params = new HashMap<String, Object>();
		String hql = "from SmsReceiver where 1 = 1";
		
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSmsId())) {
			params.put(" smsId", this.getSmsId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getReceiveId())) {
			params.put(" receiveId", this.getReceiveId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getReceiveName())) {
			params.put(" receiveName", this.getReceiveName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getReceiveSms())) {
			params.put(" receiveSms", this.getReceiveSms());
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
		String hql = "from SmsReceiver where 1 = 1";
	    if(ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getSmsId())) {
			params.put(" smsId", this.getSmsId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getReceiveId())) {
			params.put(" receiveId", this.getReceiveId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getWorkOrderId())) {
			params.put(" workOrderId", this.getWorkOrderId());
	    }
	    if(ObjectUtils.isNotEmpty(this.getReceiveName())) {
			params.put(" receiveName", this.getReceiveName());
	    }
	    if(ObjectUtils.isNotEmpty(this.getReceiveSms())) {
			params.put(" receiveSms", this.getReceiveSms());
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
			.append("SmsId",getSmsId())
			.append("ReceiveId",getReceiveId())
			.append("WorkOrderId",getWorkOrderId())
			.append("ReceiveName",getReceiveName())
			.append("ReceiveSms",getReceiveSms())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof SmsReceiver == false) return false;
		if(this == obj) return true;
		SmsReceiver other = (SmsReceiver)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

