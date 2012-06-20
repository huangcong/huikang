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
 * 资源
 * 
 * @author huikang
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "sys_cms_resource")
public class CmsResource implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	// alias
	public static final String TABLE_ALIAS = "资源";
	public static final String ALIAS_ID = "编号";
	public static final String ALIAS_CATEOGYR_ID = "栏目";
	public static final String ALIAS_TITLE = "标题";
	public static final String ALIAS_SUB_TITLE = "副标题";
	public static final String ALIAS_KEY_WORD = "关键词";
	public static final String ALIAS_AUTHOR = "作者";
	public static final String ALIAS_SOURCE = "来源";
	public static final String ALIAS_CONTENT = "内容";
	public static final String ALIAS_IMG_NUM = "图片数量";
	public static final String ALIAS_VIEW_NUM = "浏览次数";
	public static final String ALIAS_FILE_PATH = "附件地址";
	public static final String ALIAS_IMG_PATH = "图片地址";
	public static final String ALIAS_ADD_TIME = "添加时间";
	public static final String ALIAS_UPDATE_TIME = "更新时间";
	public static final String ALIAS_SORT = "排序";
	public static final String ALIAS_CATEGORY_PATH = "栏目路径";

	// date formats
	public static final String FORMAT_ADD_TIME = "yyyy-MM-dd";
	public static final String FORMAT_UPDATE_TIME = "yyyy-MM-dd";

	// columns START
	/** 编号 */
	private java.lang.Integer id;

	/** 栏目 */
	private java.lang.Long cateogyrId;

	/** 标题 */
	private java.lang.String title;

	/** 副标题 */
	private java.lang.String subTitle;

	/** 关键词 */
	private java.lang.String keyWord;

	/** 作者 */
	private java.lang.String author;

	/** 来源 */
	private java.lang.String source;

	/** 内容 */
	private java.lang.String content;

	/** 图片数量 */
	private java.lang.Integer imgNum;

	/** 浏览次数 */
	private java.lang.Integer viewNum;

	/** 附件地址 */
	private java.lang.String filePath;

	/** 图片地址 */
	private java.lang.String imgPath;

	/** 添加时间 */
	private java.lang.Long addTime;

	/** 更新时间 */
	private java.lang.Long updateTime;

	/** 排序 */
	private java.lang.Integer sort;

	/** 栏目路径 */
	private java.lang.String categoryPath;

	// columns END

	public CmsResource() {
	}

	public CmsResource(java.lang.Integer id) {
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

	@Column(name = "cateogyr_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCateogyrId() {
		return this.cateogyrId;
	}

	public void setCateogyrId(java.lang.Long value) {
		this.cateogyrId = value;
	}

	@Column(name = "title", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getTitle() {
		return this.title;
	}

	public void setTitle(java.lang.String value) {
		this.title = value;
	}

	@Column(name = "sub_title", unique = false, nullable = false, insertable = true, updatable = true, length = 500)
	public java.lang.String getSubTitle() {
		return this.subTitle;
	}

	public void setSubTitle(java.lang.String value) {
		this.subTitle = value;
	}

	@Column(name = "key_word", unique = false, nullable = false, insertable = true, updatable = true, length = 1000)
	public java.lang.String getKeyWord() {
		return this.keyWord;
	}

	public void setKeyWord(java.lang.String value) {
		this.keyWord = value;
	}

	@Column(name = "author", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getAuthor() {
		return this.author;
	}

	public void setAuthor(java.lang.String value) {
		this.author = value;
	}

	@Column(name = "source", unique = false, nullable = false, insertable = true, updatable = true, length = 45)
	public java.lang.String getSource() {
		return this.source;
	}

	public void setSource(java.lang.String value) {
		this.source = value;
	}

	@Column(name = "content", unique = false, nullable = false, insertable = true, updatable = true, length = 2147483647)
	public java.lang.String getContent() {
		return this.content;
	}

	public void setContent(java.lang.String value) {
		this.content = value;
	}

	@Column(name = "img_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getImgNum() {
		return this.imgNum;
	}

	public void setImgNum(java.lang.Integer value) {
		this.imgNum = value;
	}

	@Column(name = "view_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getViewNum() {
		return this.viewNum;
	}

	public void setViewNum(java.lang.Integer value) {
		this.viewNum = value;
	}

	@Column(name = "file_path", unique = false, nullable = false, insertable = true, updatable = true, length = 255)
	public java.lang.String getFilePath() {
		return this.filePath;
	}

	public void setFilePath(java.lang.String value) {
		this.filePath = value;
	}

	@Column(name = "img_path", unique = false, nullable = false, insertable = true, updatable = true, length = 255)
	public java.lang.String getImgPath() {
		return this.imgPath;
	}

	public void setImgPath(java.lang.String value) {
		this.imgPath = value;
	}

	@Transient
	public String getAddTimeString() {
		return DateUtils.format(getAddTime(), FORMAT_ADD_TIME);
	}

	@Transient
	public Date getAddTimeDate() {
		return DateUtils.longToDate(this.addTime);
	}

	@Column(name = "add_time", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getAddTime() {
		return this.addTime;
	}

	public void setAddTime(java.lang.Long value) {
		this.addTime = value;
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

	@Column(name = "sort", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getSort() {
		return this.sort;
	}

	public void setSort(java.lang.Integer value) {
		this.sort = value;
	}

	@Column(name = "category_path", unique = false, nullable = false, insertable = true, updatable = true, length = 255)
	public java.lang.String getCategoryPath() {
		return this.categoryPath;
	}

	public void setCategoryPath(java.lang.String value) {
		this.categoryPath = value;
	}

	/** 充血实现begin */
	@Transient
	public CmsResource getCmsResource() {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		CmsResource result = null;
		if (this.id != null) {
			result = (CmsResource) d.get(CmsResource.class, this.id);
		}
		return result;
	}

	public QueryResult findPage(Pagination pagination, Map orders) {
		// BaseBeanFactory.getBean("commonDAOHibernate");
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from CmsResource where 1 = 1";

		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getCateogyrId())) {
			params.put(" cateogyrId", this.getCateogyrId());
		}
		if (ObjectUtils.isNotEmpty(this.getTitle())) {
			params.put(" title", this.getTitle());
		}
		if (ObjectUtils.isNotEmpty(this.getSubTitle())) {
			params.put(" subTitle", this.getSubTitle());
		}
		if (ObjectUtils.isNotEmpty(this.getKeyWord())) {
			params.put(" keyWord", this.getKeyWord());
		}
		if (ObjectUtils.isNotEmpty(this.getAuthor())) {
			params.put(" author", this.getAuthor());
		}
		if (ObjectUtils.isNotEmpty(this.getSource())) {
			params.put(" source", this.getSource());
		}
		if (ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
		}
		if (ObjectUtils.isNotEmpty(this.getImgNum())) {
			params.put(" imgNum", this.getImgNum());
		}
		if (ObjectUtils.isNotEmpty(this.getViewNum())) {
			params.put(" viewNum", this.getViewNum());
		}
		if (ObjectUtils.isNotEmpty(this.getFilePath())) {
			params.put(" filePath", this.getFilePath());
		}
		if (ObjectUtils.isNotEmpty(this.getImgPath())) {
			params.put(" imgPath", this.getImgPath());
		}
		if (ObjectUtils.isNotEmpty(this.getAddTime())) {
			params.put(" addTime", this.getAddTime());
		}
		if (ObjectUtils.isNotEmpty(this.getUpdateTime())) {
			params.put(" updateTime", this.getUpdateTime());
		}
		if (ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
		}
		if (ObjectUtils.isNotEmpty(this.getCategoryPath())) {
			params.put(" categoryPath", this.getCategoryPath());
		}

		QueryResult result = d.findPage(hql, params, pagination, orders);
		return result;
	}

	public List findList(Integer dataNum, Map orders) {
		CommonDAOHibernate d = (CommonDAOHibernate) ApplicationContextHolder
				.getBean("commonDAOHibernate");
		HashMap<String, Object> params = new HashMap<String, Object>();
		String hql = "from CmsResource where 1 = 1";
		if (ObjectUtils.isNotEmpty(this.getId())) {
			params.put(" id", this.getId());
		}
		if (ObjectUtils.isNotEmpty(this.getCateogyrId())) {
			params.put(" cateogyrId", this.getCateogyrId());
		}
		if (ObjectUtils.isNotEmpty(this.getTitle())) {
			params.put(" title", this.getTitle());
		}
		if (ObjectUtils.isNotEmpty(this.getSubTitle())) {
			params.put(" subTitle", this.getSubTitle());
		}
		if (ObjectUtils.isNotEmpty(this.getKeyWord())) {
			params.put(" keyWord", this.getKeyWord());
		}
		if (ObjectUtils.isNotEmpty(this.getAuthor())) {
			params.put(" author", this.getAuthor());
		}
		if (ObjectUtils.isNotEmpty(this.getSource())) {
			params.put(" source", this.getSource());
		}
		if (ObjectUtils.isNotEmpty(this.getContent())) {
			params.put(" content", this.getContent());
		}
		if (ObjectUtils.isNotEmpty(this.getImgNum())) {
			params.put(" imgNum", this.getImgNum());
		}
		if (ObjectUtils.isNotEmpty(this.getViewNum())) {
			params.put(" viewNum", this.getViewNum());
		}
		if (ObjectUtils.isNotEmpty(this.getFilePath())) {
			params.put(" filePath", this.getFilePath());
		}
		if (ObjectUtils.isNotEmpty(this.getImgPath())) {
			params.put(" imgPath", this.getImgPath());
		}
		if (ObjectUtils.isNotEmpty(this.getAddTime())) {
			params.put(" addTime", this.getAddTime());
		}
		if (ObjectUtils.isNotEmpty(this.getUpdateTime())) {
			params.put(" updateTime", this.getUpdateTime());
		}
		if (ObjectUtils.isNotEmpty(this.getSort())) {
			params.put(" sort", this.getSort());
		}
		if (ObjectUtils.isNotEmpty(this.getCategoryPath())) {
			params.put(" categoryPath", this.getCategoryPath());
		}
		List result = d.findList(hql, params, dataNum);
		return result;
	}

	/** 充血实现begin */

	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
				.append("Id", getId()).append("CateogyrId", getCateogyrId())
				.append("Title", getTitle()).append("SubTitle", getSubTitle())
				.append("KeyWord", getKeyWord()).append("Author", getAuthor())
				.append("Source", getSource()).append("Content", getContent())
				.append("ImgNum", getImgNum()).append("ViewNum", getViewNum())
				.append("FilePath", getFilePath()).append("ImgPath",
						getImgPath()).append("AddTime", getAddTime()).append(
						"UpdateTime", getUpdateTime())
				.append("Sort", getSort()).append("CategoryPath",
						getCategoryPath()).toString();
	}

	public int hashCode() {
		return new HashCodeBuilder().append(getId()).toHashCode();
	}

	public boolean equals(Object obj) {
		if (obj instanceof CmsResource == false)
			return false;
		if (this == obj)
			return true;
		CmsResource other = (CmsResource) obj;
		return new EqualsBuilder().append(getId(), other.getId()).isEquals();
	}
}
