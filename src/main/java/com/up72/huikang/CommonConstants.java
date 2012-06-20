package com.up72.huikang;

  
public class CommonConstants {
	
	/*****Google验证码组件session key******/
	public static String VALID_CODE = "KAPTCHA_SESSION_KEY";
	
	/*****系统404********/
	public static String PAGE_404 = "redirect:/404.html";
	/*****系统建设中********/
	public static String PAGE_BUILDING = "redirect:/building.html";
	
    /** 根绝对路径 **/
    public static String ROOTPATH = "";
	
	/** 站点SITE_KEY **/
	public static final String SESSION_SITE_KEY =  "SESSION_SITE_KEY";
	
	public static final String COOKIE_SITE_KEY =  "COOKIE_SITE_KEY";
	
	/** 角色 ROLE_KEY */
	public static final String SESSION_ROLE_KEY =  "SESSION_ROLE_KEY";
	
	/** 产品 PRODUCT_KEY */
	public static final String SESSION_PRODUCT_KEY =  "SESSION_PRODUCT_KEY";
	
	
	
	/** 前台用户 COOKIE_KEY值 */
	public static final String COOKIE_MEMBER_KEY =  "COOKIE_MEMBER_KEY";
	/** 前台用户 SESSION_KEY */
	public static final String SESSION_MEMBER_KEY =  "SESSION_MEMBER_KEY";
	/**
	 * 登陆Cookie有效时长
	 * @author wqtan
	 */
	public static final Integer LOGIN_COOKIE_TIME_LENGTH = 30 * 24 * 3600;
	
	public static final Integer LOGIN_COOKIE_TIME_DEFAULT = -1;
	
	
	
	/** 后台用户COOKIE_KEY */
	public static final String COOKIE_ADMIN_MEMBER_KEY =  "COOKIE_ADMIN_MEMBER_KEY";
	/** 后台用户 SESSION_KEY */
	public static final String SESSION_ADMIN_MEMBER_KEY =  "SESSION_ADMIN_MEMBER_KEY";
	
	/** 系统管理员 SESSION_KEY */
	public static final String SESSION_SYSTEM_MEMBER_KEY =  "SESSION_SYSTEM_MEMBER_KEY";
	/** 系统管理员 COOKIE_KEY */
	public static final String COOKIE_SYSTEM_MEMBER_KEY =  "COOKIE_SYSTEM_MEMBER_KEY";

	/**
	 * 性别，保密
	 */
	public static final Integer MEMBER_GENDER_SECRET = 0; 
	/**
	 * 性别，男
	 */
	public static final Integer MEMBER_GENDER_MALE = 1;
	/**
	 * 性别，女
	 */
	public static final Integer MEMBER_GENDER_FEMALE = 2; 
	
	
	/** 用户登陆默认值 */
	public static final Integer  MEMBER_TYPE = 0;
	
	/** 一般用户 */
	public static final Integer  MEMBER_TYPE_USUALLY = 1;
	/** 后台用户 */
	public static final Integer  MEMBER_TYPE_ADMIN = 2;
	/** 系统管理员用户 */
	public static final Integer  MEMBER_TYPE_SYSTEM = 5;
	
	public static final Integer ONE = 1;
	public static final Integer ZERO = 0;
	
	
	/** 删除 */
	public static final Integer PUBLIC_DELETE = 1;
	/** 不删除 */
	public static final Integer PUBLIC_UNDELETE = 0;
	
	
	/** 启用 */
	public static final Integer PUBILC_ENABLED = 1;
	/** 不启用 */
	public static final Integer PUBILC_UNENABLE = 0;
	/** 未激活 */
	public static final Integer PUBILC_UNACTIVATE = 2;
	
	/** 显示 */
	public static final Integer PUBILC_VISIBLED = 1;
	/** 不显示 */
	public static final Integer PUBILC_UNVISIBLED = 0;
	
	/** 低危 */
	public static final Integer LOW_danger = 0;
	/** 中危 */
	public static final Integer MODDLE_DANGER = 1;
	/** 高危 */
	public static final Integer HIGH_DANGER= 2;
	
	
	/** 显示列属性值 */
	public static final String SHOW_LABLE_VALUE ="showColumn";
	/** 显示列标签字段 */
	public static final String SHOW_COLUMN ="showColumn";
	
	
	
	  /** File separator from System properties */
    public static final String FILE_SEP = System.getProperty("file.separator");

    /** User home from System properties */
    public static final String MEMBER_HOME =
        System.getProperty("user.home") + FILE_SEP;
    
    /** 编码 **/
	public static final String SYSTEM_ENCODING = "UTF-8";

	/**
	 * ResultDTO的Result属性的Key
	 */
	public static final String RESULTDTO_RESULT_KEY = "up72_result:result";
	/**
	 * ResultDTO的Message属性的Key
	 */
	public static final String RESULTDTO_MESSAGE_KEY = "up72_result:message";
	
	public static String MODEL_PACKAGE = "";
	
	public static String HOST = "";
	
	/*********************************** bxmen ***************************************/
	/** system.properties文件 */
	public static String PROPERTIES_FILE = "system.properties";
	
	/** 私有KEY 值：U-WinSendSubscribeEmail */
	public static String PRIVATE_KEY = "U-WinSendSubscribeEmail";
	
	/** 定时器表达式 uwin.timing.expression */
	public static String TIMING_EXPRESSION = "uwin.timing.expression";

	/** 定时器初始化表达式 uwin.timing.init.expression */
	public static String INIT_TIMING_EXPRESSION = "uwin.timing.init.expression";
	
	/** 密码找回标题 */
	public static String BACK_PASSWORD_TITLE = "mail.password.back.title";
	/** 密码找回模板 */
	public static String BACK_PASSWORD_TEMPLATE = "mail.password.back.template";
	/** 密码找回模板 */
	public static String BACK_PASSWORD_URL = "mail.password.back.url";
	
	
	
	/** 注册标题 */
	public static String REGISTER_TITLE = "register.title";
	/** 注册确认链接 */
	public static String REGISTER_CONFIRM_URL = "register.confirmUrl";
	/** 注册邮件模板 */
	public static String REGISTER_TEMPLATE = "register.template";

	
	/** 订阅邮件标题 */
	public static String SUBSCRIBE_MAIL_TITLE = "mail.subscribe.product.title";
	
	/** 订阅邮件模板 */
	public static String SUBSCRIBE_MAIL_TEMPLATE = "mail.subscribe.product.template";
	
	/** 订阅邮件模板 */
	public static String SUBSCRIBE_SMS_TEMPLATE = "sms.subscribe.product.template";
	
	/** 订阅确认邮件标题 */
	public static String MAIL_SUBSCRIBE_TITLE = "mail.subscribe.title";
	
	/** 退订确认邮件标题 */
	public static String MAIL_CALCEL_TITLE = "mail.cancel.title";
	
	/** 订阅、退订邮件模板 */
	public static String SUBSCRIBE_CALCEL_TEMPLATE = "mail.subscribe.cancel.template";
	
	/** 默认编码 UTF-8 */
	public static String DEFAULT_ENCODE = "utf-8";
	
	/** 启用信息过滤 */
	public static Integer WORDS_ENABLED_TRUE =  1;
	/** 是否禁止IP访问 **/
	public static Integer BANNED_IP_VISIT_TRUE =  2;
	/** 是否禁止IP注册 **/
	public static Integer BANNED_IP_REGISTER_TRUE =  1;
	/*********************************** bxmen ***************************************/
}
