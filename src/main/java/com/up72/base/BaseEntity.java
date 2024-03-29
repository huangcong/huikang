package com.up72.base;

import com.up72.dao.hibernate.CommonDAOHibernate;
import com.up72.service.util.BaseBeanFactory;

/**
 * @author up72
 */
public class BaseEntity implements java.io.Serializable {

	private static final long serialVersionUID = -7200095849148417467L;

	protected static final String DATE_FORMAT = "yyyy-MM-dd";

	protected static final String TIME_FORMAT = "HH:mm:ss";

	protected static final String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

	protected static final String TIMESTAMP_FORMAT = "yyyy-MM-dd HH:mm:ss.S";

	public void save() {
		CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
				.getBean("commonDAOHibernate");
		d.save(this);
	}

	public void delete() {
		CommonDAOHibernate d = (CommonDAOHibernate) BaseBeanFactory
				.getBean("commonDAOHibernate");
		d.delete(this);

	}
}
