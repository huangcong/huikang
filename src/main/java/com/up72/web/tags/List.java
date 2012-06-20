package com.up72.web.tags;

import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * 
 * @author jhe
 * 
 */
public class List extends BodyTagSupport {

	
	private static final long serialVersionUID = -3007917257706408935L;
	
	//标签发生错误时置为true
	private boolean errorFlag; 
	
	/**
	 * 标签开始时调用的处理方法
	 */
	public int doStartTag() {
//		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
//		HttpServletResponse response = (HttpServletResponse) pageContext.getResponse();
	
		return EVAL_BODY_INCLUDE;
	}

	/**
	 * 判断了标签体的内容之后调用的处理方法
	 */
	public int doAfterBody() {
		return SKIP_BODY;
	}

	/**
	 * 标签结束时调用的处理方法
	 */
	public int doEndTag() {
		 // 标签出错则忽略后面的页面代码
		if (errorFlag == true) {
			return SKIP_PAGE;
		} else {
			return EVAL_PAGE;
		}
	}

}
