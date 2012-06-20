package com.up72.web.util;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.json.JSONException;
/**
 * 通过创建mvc对象创建mvc以及视图
 * @author kzhang
 *
 */
public class MVCUtil {

	public static void createMethod(String doCodeIncldue ,Map methodMap,String doPath) {
				
		StringBuffer doCodeBuffer = new StringBuffer("if($isMD(\"beginMethod\",request)){\n");
		doCodeBuffer.append("}");
		if(methodMap != null)
		{
			Iterator<String> it = methodMap.keySet().iterator();

			while(it.hasNext())
			{
				String methodName = it.next();
				Object value = methodMap.get(methodName);
				doCodeBuffer.append("else if($isMD(\"" + methodName + "\",request)){\n");
				doCodeBuffer.append("    " + value + "\n");
				doCodeBuffer.append("}\n");
			}
		}
		String result = doCodeIncldue + doCodeBuffer.toString();
		FileUtil.createFile(doPath,result);

	}
	
	public static void createView() {

	}
	
    public static void main(String[] args) throws JSONException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
    	String doCodeIncldue = "<%@ page contentType=\"text/html; charset=utf-8\"%>\n"
    		+ "<%@include file=\"service.jsp\" %>\n"
    		+ "<jsp:useBean id=\"resource\" class=\"com.up72.model.Resource\" scope=\"page\" />\n"
    		+ "<jsp:setProperty name=\"resource\" property=\"*\" />\n";
    	
    	HashMap map = new HashMap();
    	map.put("edit", "out.println(\"test\")");
    	String doPath = "d:\\do.jsp";
    	createMethod(doCodeIncldue,map,doPath);
    }
    

}
