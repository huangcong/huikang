package com.up72.web.util;


import com.chatset.ParseEncoding;

/**
 * 用于解析网页编码
 * @author 贺杰
 *
 */
public class Encoding {
    
    /**
     * 获得数据编码
     * @param url
     * @return
     */
    public static String getCharset(String url){
	String charset = "";
	    ParseEncoding parse = new ParseEncoding();
	    charset = parse.getEncoding(url);
	    if (charset != null && charset.equals("UNKNOWN") || charset.equals("ASCII")) {
		charset = "GB2312";
	    }
	    //System.out.println("charset: "+ charset);
	    return charset;
    }

}
