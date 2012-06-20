package com.up72.sys.web.jspcommon;

import java.util.List;

public class JspRender {
	//把变量放置到request scope
//	public void r(HttpServletRequest request,String name,Object o){
//		request.setAttribute(name, o);
//	}
	//把变量放置到session scope
//	public void s(HttpServletRequest request,String name,Object o){
//		request.getSession().setAttribute(name, o);
//	}
	//把变量放置到session scope
//	public void p(PageContext page,String name,Object o){
//		page.setAttribute(name, o);
//	}
	
	/**
	 * 获取select渲染
	 * id为html元素id与name名称
	 * items为下拉数据源 item[0]为value,item[1]为显示内容
	 * defaultValue为选中值
	 */
	public String select(String id,List <Object[]>items,String defaultValue){
		StringBuffer resultBuffer = new StringBuffer("");
		resultBuffer.append("<select id=\"" + id + "\" name=\" " + id +	"\">");
		for (Object[] item : items) {
			resultBuffer.append("<option value=\"" + item[0] + "\"");
			if(defaultValue.equals(item[0].toString())){resultBuffer.append(" selected ");}
			resultBuffer.append("/>" + item[1] + "</option>");
		}
		resultBuffer.append("</select>");
		return resultBuffer.toString();
	}
	
	/**
	 * 
	 * @param items 为数据清单items[0]为传参，item[1]为显示
	 * @param href 列表链接规则
	 * @param target 列表链接目标
	 * @return
	 */
	public String li(List <Object[]>items,String href,String target){
		StringBuffer resultBuffer = new StringBuffer("");
		for (Object[] item : items) {
			resultBuffer.append("<li><a href=\"" + href + item[0] + "\" target=\"" + target + "\">" + item[1] + "</a></li>");
		}
		resultBuffer.append("</select>");
		return resultBuffer.toString();
	}
}
