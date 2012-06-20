/**
 * 站点中需要在session保存的数据对象
 */
package com.up72.web.util;


/**
 * Pagination
 * @author 5754
 * Dec 23, 2006
 */
public class SessionBean implements ISessionBean {
	private String userName;
	private String userId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
