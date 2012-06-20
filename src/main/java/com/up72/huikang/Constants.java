package com.up72.huikang;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class Constants {

	/* 系统运行平台(是否类unix平台，先支持win和unix两种平台，其他未做测试) */
	public static boolean IS_UNIX = true;

	/* debug模式是否开启（打印跟踪信息） */
	public static boolean DEBUG = true;

	/* 是否在系统启动时加载分词字典 */
	public static boolean LOAD_DICTIONARY_ON_BOOT = true;

	/* 索引库目录地址 */
	public static String INDEX_DIR = "index";

	/* 索引配置文件地址 */
	public static String CONFIG_FILE_DIR = "lucene";

	/* 索引配置备份文件地址 */
	public static String CONFIG_BACKUP_FILE_DIR = "lucene/backUp";

	/* 索引配置缓存（HashMap存储）中获取单个model配置的Key */
	public static String CONFIG_FILE_KEY = "name";

	/* 系统支持的索引域存储方式【不存储，存储】，当文本大于一定长度且要存储时自动采取压缩存储方式 */
//	public static Store[] STORES = new Store[] { Store.NO, Store.YES };

	/* 系统支持的索引域索引方式【不索引，不分词索引，分词索引】 */
//	public static Index[] INDEXS = new Index[] { Index.NO,
//			Index.NOT_ANALYZED_NO_NORMS, Index.ANALYZED_NO_NORMS };

	/* 从Class中获取getMehtod时需要的空参数 */
	public static Class<?>[] NONECLASSES = new Class<?>[] {};

	/* 调用从Class中获取的getMehtod时传入的空参数列表 */
	public static Object[] NONEOBJECTS = new Object[] {};

	/* 索引配置文件序列化时文件后缀名 */
	public static String FONFIG_FILE_SUFFIX = ".tmp";

	/* 索引配置文件备份时文件后缀名 */
	public static String FONFIG_FILE_SUFFIX_BAK = ".bak";

	/* 索引条目的唯一标示符 */
	public static String ITEM_ID = "uuid";
	/* Modle索引时自动添加的Field，存储该Modle的类型（类名全路径） */
	public static String ITEM_CLASS = "class";

	/* 查询列表时默认返回列表数量 */
	public static int DEFAULT_LIST_SIZE = 20;

	/* 索引配置文件目录 */
	public static String PROPERTIES_DIR = "lucene";

	/* 判断一目录是否索引仓库时，根据此目录下是否有该文件来判断 */
	public static String SEGMENTS = "segments.gen";

	/* 索引对象get方法返回值的范围（即get方法返回类型包含在该定义中时，可以创建该字段索引） */
	public static List<String> INDEX_TYPE = new ArrayList<String>(Arrays
			.asList(new String[] { "String", "Integer", "Long", "Double",
					"Float" }));

	public static String PARAM_TYPE_STRING = "String";
	public static String PARAM_TYPE_INTEGER = "Integer";
	public static String PARAM_TYPE_LONG = "Long";
	public static String PARAM_TYPE_DOUBLE = "Double";
	public static String PARAM_TYPE_FLOAT = "Float";

}
