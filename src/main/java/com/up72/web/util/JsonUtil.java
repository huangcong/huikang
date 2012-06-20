package com.up72.web.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * 通过进行数据的解析提供Json格式的数据接口
 * 
 * @author kzhang
 * 
 */
public class JsonUtil {

	private static Class[] javaClasses = new Class[] { String.class,
			Integer.class, int.class, Long.class, long.class, Double.class,
			double.class, boolean.class, Boolean.class, Date.class };

	/**
	 * 根据传递的对象提供对象的json格式，格式如下：
	 * {"user":{"id":"11","email":"aasf@sa.com","name":"名字"
	 * ,"enable":"","roleCode":"","password":"","userType":""}}
	 * 
	 * @param obj
	 * @return
	 * @throws JSONException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static String getJsonObject(Object obj) throws JSONException,
			IllegalArgumentException, IllegalAccessException,
			InvocationTargetException {

		String json = "{}";

		JSONObject jsonObject = new JSONObject(json);
		if (ObjectUtils.isNotEmpty(obj)) {
			Class clz = obj.getClass();
			String className = StringHelper.getStrFirstLower(clz
					.getSimpleName());
			Map<String, String> property = new HashMap<String, String>();

			Class[] paraTypes = new Class[] { String.class };
			Method[] methods = clz.getDeclaredMethods();
			for (Method method : methods) {
				String methodName = method.getName();
				if (methodName.startsWith("get")) {
					property.put(StringHelper.getStrFirstLower(method.getName()
							.replace("get", "")), String.valueOf(method.invoke(
							obj, null)));
				}
			}
			jsonObject.put(className, property);
		}
		String result = jsonObject.toString().replace("null", "");
		return result;
	}

	/**
	 * 根据传递列表值返回列表格式json数据，格式如下
	 * {"userList":[{"id":"111","email":"aasf@sa.com1","name"
	 * :"名字1","enable":"","roleCode"
	 * :"","password":"","userType":""},{"id":"111",
	 * "email":"aasf@sa.com1","name"
	 * :"名字1","enable":"","roleCode":"","password":""
	 * ,"userType":""},{"id":"111",
	 * "email":"aasf@sa.com1","name":"名字1","enable":""
	 * ,"roleCode":"","password":""
	 * ,"userType":""},{"id":"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable":""
	 * ,"roleCode":"","password":"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable":"","roleCode":"","password"
	 * :"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1","name":"名字1","enable"
	 * :"","roleCode":"","password"
	 * :"","userType":""},{"id":"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable"
	 * :"","roleCode":"","password":"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable":"","roleCode":"","password"
	 * :"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1","name":"名字1","enable"
	 * :"","roleCode":"","password"
	 * :"","userType":""},{"id":"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable"
	 * :"","roleCode":"","password":"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable":"","roleCode":"","password"
	 * :"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1","name":"名字1","enable"
	 * :"","roleCode":"","password"
	 * :"","userType":""},{"id":"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable"
	 * :"","roleCode":"","password":"","userType":""},{"id"
	 * :"111","email":"aasf@sa.com1"
	 * ,"name":"名字1","enable":"","roleCode":"","password":"","userType":""}]}
	 * 
	 * @param objs
	 * @param clz
	 * @return
	 * @throws JSONException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static String getJsonObject(List objs) throws JSONException,
			IllegalArgumentException, IllegalAccessException,
			InvocationTargetException {
		String json = "{}";

		JSONObject jsonObject = new JSONObject(json);
		String className = null;
		if (ObjectUtils.isNotEmpty(objs)) {

			List propertyList = new ArrayList();
			Map<String, String> property = new HashMap<String, String>();

			for (Object obj : objs) {
				className = StringHelper.getStrFirstLower(obj.getClass()
						.getSimpleName());
				Class[] paraTypes = new Class[] { String.class };
				Method[] methods = obj.getClass().getDeclaredMethods();
				// 过滤非java自由对象以及项目对象外的对象
				String methodValues = "";
				for (Method method : methods) {
					String methodName = method.getName();
					if (methodName.startsWith("get")) {
						property.put(StringHelper.getStrFirstLower(method
								.getName().replace("get", "")), String
								.valueOf(method.invoke(obj, null)));
						propertyList.add(property);
					}
				}
			}
			jsonObject.put(className + "List", propertyList);
		}

		String result = jsonObject.toString().replace("null", "");
		return result;
	}

	/**
	 * 根据传递的列表值以及分页对象，提供分页格式的json数据，格式如下 {"page":"{\"pagination\":{\"range\":\"0\",\"start\":\"10\",\"totalRecord\":\"0\",\"maxIndexPages\":\"5\",\"totalPage\":\"0\"}}"
	 * ,"items":"{\"userList\":[{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"},{\"id\":\"111\",\"email\":\"aasf@sa.com1\",\"name\":\"名字1\",\"enable\":\"\",\"roleCode\":\"\",\"password\":\"\",\"userType\":\"\"}]}"
	 * }
	 * 
	 * @param objs
	 * @param pagination
	 * @return
	 * @throws JSONException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static String getJsonObject(List objs, Pagination pagination)
			throws JSONException, IllegalArgumentException,
			IllegalAccessException, InvocationTargetException {
		String json = "{}";

		JSONObject jsonObject = new JSONObject(json);

		jsonObject.put("items", getJsonObject(objs));
		jsonObject.put("page", getJsonObject(pagination));
		String result = jsonObject.toString().replace("null", "");
		return result;
	}

	public static void main(String[] args) throws JSONException,
			IllegalArgumentException, IllegalAccessException,
			InvocationTargetException {
	}

}
