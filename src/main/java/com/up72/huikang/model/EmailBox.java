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
 * 邮件箱
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "hk_email_box")
public class EmailBox implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// alias
	public static final String TABLE_ALIAS = "邮件箱";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_SEND_ID = "发件人";
	public static final String ALIAS_SEND_EMAIL = "发件邮箱";
	public static final String ALIAS_TITLE = "标题";
	public static final String ALIAS_TEMPLATE_ID = "模板编号";
	public static final String ALIAS_TEMPLATE_MODEL = "模板模型";
	public static final String ALIAS_CONTENT = "内容";
	public static final String ALIAS_FILES = "附件";
	public static final String ALIAS_TYPE = "类型（邮件，草稿）";
	public static final String ALIAS_DELETED = "是否删除";		//1为删除，0为未删除
	public static final String ALIAS_SEND_TIME = "发送时间";
	public static final String ALIAS_RESULT = "发送结果";

	// date formats
	public static final String FORMAT_SEND_TIME = "yyyy-MM-dd";

	// columns START
	/** 编号 */
	private java.lang.Long id;

	/** 发件人 */
	private java.lang.Long sendId;

	/** 发件邮箱 */
	private java.lang.String sendEmail;

	/** 标题 */
	private java.lang.String title;

	/** 模板编号 */
	private java.lang.Long templateId;

	/** 模板模型 */
	private java.lang.String templateModel;

	/** 内容 */
	private java.lang.String content;

	/** 附件 */
	private java.lang.String files;

	/** 类型（邮件，草稿） */
	private java.lang.String type;

	/** 是否删除 */
	private Integer deleted;

	/** 发送时间 */
	private java.lang.Long sendTime;

	/** 发送结果 */
	private java.lang.Integer result;

	// columns END

	public EmailBox() {
	}

	public EmailBox(java.lang.Long id) {
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

	@Column(name = "send_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getSendId() {
		return this.sendId;
	}

	public void setSendId(java.lang.Long value) {
		this.sendId = value;
	}

	@Column(name = "send_email", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getSendEmail() {
		return this.sendEmail;
	}

	public void setSendEmail(java.lang.String value) {
		this.sendEmail = value;
	}

	@Column(name = "title", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getTitle() {
		return this.title;
	}

	public void setTitle(java.lang.String value) {
		this.title = value;
	}

	@Column(name = "template_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getTemplateId() {
		return this.templateId;
	}

	public void setTemplateId(java.lang.Long value) {
		this.templateId = value;
	}

	@Column(name = "template_model", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getTemplateModel() {
		return this.templateModel;
	}

	public void setTemplateModel(java.lang.String value) {
		this.templateModel = value;
	}

	@Column(name = "content", unique = false, nullable = false, insertable = true, updatable = true, length = 2147483647)
	public java.lang.String getContent() {
		return this.content;
	}

	public void setContent(java.lang.String value) {
		this.content = value;
	}

	@Column(name = "files", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getFiles() {
		return this.files;
	}

	public void setFiles(java.lang.String value) {
		this.files = value;
	}

	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getType() {
		return this.type;
	}

	public void setType(java.lang.String value) {
		this.type = value;
	}

	@Column(name = "deleted", unique = false, nullable = false, insertable = true, updatable = true, length = 3)
	public Integer getDeleted() {
		return this.deleted;
	}

	public void setDeleted(Integer value) {
		this.deleted = value;
	}

	@Transient
	public String getSendTimeString() {
		return DateUtils.format(getSendTime(), FORMAT_SEND_TIME);
	}

	@Transient
	public Date getSendTimeDate() {
		return DateUtils.longToDate(this.sendTime);
	}

	@Column(name = "send_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getSendTime() {
		return this.sendTime;
	}

	public void setSendTime(java.lang.Long value) {
		this.sendTime = value;
	}

	@Column(name = "result", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getResult() {
		return this.result;
	}

	public void setResult(java.lang.Integer value) {
		this.result = value;
	}

	/** 充血实现begin */
	@Transient
	public EmailBox getEmailBox() {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		EmailBox result = null;
		if (this.id != null) {
			result = (EmailBox) d.get(EmailBox.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
		// BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from EmailBox where 1 = 1";

		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getSendId())) {
			params.put(" sendId", this.getSendId());
		}
		if (ObjectUtils.isNotEmpty(this.getSendEmail())) {
			params.put(" sendEmail", this.getSendEmail());
		}
		if (ObjectUtils.isNotEmpty(this.getTitle())) {
			params.put(" title", this.getTitle());
		}
		if (ObjectUtils.isNotEmpty(this.getTemplateId())) {
			params.put(" templateId", this.getTemplateId());
		}
		if (ObjectUtils.isNotEmpty(this.getTemplateModel())) {
			params.put(" templateModel", this.getTemplateModel());
		}
		if (ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
		}
		if (ObjectUtils.isNotEmpty(this.getFiles())) {
			params.put(" files", this.getFiles());
		}
		if (ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
		}
		if (ObjectUtils.isNotEmpty(this.getDeleted())) {
			params.put(" deleted", this.getDeleted());
		}
		if (ObjectUtils.isNotEmpty(this.getSendTime())) {
			params.put(" sendTime", this.getSendTime());
		}
		if (ObjectUtils.isNotEmpty(this.getResult())) {
			params.put(" result", this.getResult());
		}

		QueryResult result = d.findPage(hql, params, pagination, orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from EmailBox where 1 = 1";
		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getSendId())) {
			params.put(" sendId", this.getSendId());
		}
		if (ObjectUtils.isNotEmpty(this.getSendEmail())) {
			params.put(" sendEmail", this.getSendEmail());
		}
		if (ObjectUtils.isNotEmpty(this.getTitle())) {
			params.put(" title", this.getTitle());
		}
		if (ObjectUtils.isNotEmpty(this.getTemplateId())) {
			params.put(" templateId", this.getTemplateId());
		}
		if (ObjectUtils.isNotEmpty(this.getTemplateModel())) {
			params.put(" templateModel", this.getTemplateModel());
		}
		if (ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
		}
		if (ObjectUtils.isNotEmpty(this.getFiles())) {
			params.put(" files", this.getFiles());
		}
		if (ObjectUtils.isNotEmpty(this.getType())) {
			params.put(" type", this.getType());
		}
		if (ObjectUtils.isNotEmpty(this.getDeleted())) {
			params.put(" deleted", this.getDeleted());
		}
		if (ObjectUtils.isNotEmpty(this.getSendTime())) {
			params.put(" sendTime", this.getSendTime());
		}
		if (ObjectUtils.isNotEmpty(this.getResult())) {
			params.put(" result", this.getResult());
		}
		List result = d.findList(hql, params, dataNum);
		return result;
	}

	/** 充血实现begin */

	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
				.append("Id", getId()).append("SendId", getSendId()).append(
						"SendEmail", getSendEmail())
				.append("Title", getTitle()).append("TemplateId",
						getTemplateId()).append("TemplateModel",
						getTemplateModel()).append("Content", getContent())
				.append("Files", getFiles()).append("Type", getType()).append(
						"Deleted", getDeleted()).append("SendTime",
						getSendTime()).append("Result", getResult()).toString();
	}

	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	public boolean equals(Object obj) {
		if (obj instanceof EmailBox == false)
			return false;
		if (this == obj)
			return true;
		EmailBox other = (EmailBox) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}
