package com.up72.web.util;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CrawlUtil {

    /**
     * 下载页面源码
     * @param urlString
     * @return
     */
     public static String getHtml(String urlString) {
    	 try {
	         StringBuffer html = new StringBuffer();
	         URL url = new URL(urlString);
	         HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	         InputStreamReader isr = new InputStreamReader(conn.getInputStream(),"utf-8");
	         BufferedReader br = new BufferedReader(isr);
	         String temp;
	         while ((temp = br.readLine()) != null) {
	         html.append(temp).append("\n");
	         }
	         br.close();
	         isr.close();
	         return html.toString();
         } catch (Exception e) {
	         e.printStackTrace();
	         return null;
         }
        }
     /** 
     * 字符串查找 
     * @param expression 正则表达式字符串 
     * @param text 要进行查找操作的字符串 
     * @param str 要查找的字符串 
     */ 
     private static void findText(String expression, String text, String str) { 
     Pattern p = Pattern.compile(expression); // 正则表达式 

     Matcher m = p.matcher(text); // 操作的字符串 

     StringBuffer sb = new StringBuffer(); 
     int i = 0; 
     while (m.find()) { 
     m.appendReplacement(sb, str); 
     i++; 
     } 
     m.appendTail(sb); 
     System.out.println(sb.toString()); 
     System.out.println(i); 
     } 
     
     /**
      * 判断中文字符
      * @param s
      * @return
      */
      public static String china(String s)
      {
               StringBuilder sb = new StringBuilder();
               for(int i=0;i<s.length();i++)
               {
               if(s.substring(i, i+1).matches("[\u4e00-\u9fa5]"))
               {
           sb.append(s.subSequence(i, i+1));
               }
           }
               return sb.toString();
      }
      
      /**
       * insert into shop_email (select distinct(email_url) from shop_email_temp);
       * delete from shop_email_temp;
       * commit;
       * @param email
       * @return
       */
      private static String getEmail(String email){   
          StringBuffer msgBuffer = new StringBuffer("");
          String sqlBegin = "insert into shop_email_temp (email_url) values ('";
          String sqlEnd = "');";
          Pattern p = Pattern.compile("\\w+@(\\w+\\.)+[a-z]{2,3}");   
          Matcher m = p.matcher(email);   
          while (m.find()) 
       {
           msgBuffer.append(sqlBegin).append(m.group()).append(sqlEnd).append("\n");  
        }
          return msgBuffer.toString();
      } 
      
      /**
     * @param urlString 网址
     * @param type	类型 取哪个的值 title取title,keyword 取 keyword, description 取 description
     * @return String
     */
    public static String getKey(String urlString, String typeString){
		String _htmlInfo = getHtml(urlString);
		String patternString = "";
		String titlePattern = "<title>(.*?)</title>";
		String keyWordPattern = "<meta name=\"keywords\" content=(.*?)/>";
		String DescriptionPattern = "<meta name=\"description\" content=(.*?)/>";
		if(typeString.equalsIgnoreCase("title")){
			patternString = titlePattern;
		}else if(typeString.equalsIgnoreCase("keyword")){
			patternString = keyWordPattern;
		}else if(typeString.equalsIgnoreCase("description")){
			patternString = DescriptionPattern;
		}
		String htmlInfo = "";
		String key = "";
		try {
			htmlInfo = new String(_htmlInfo.getBytes(), Encoding.getCharset(urlString));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		final Pattern pattern = Pattern.compile(patternString, 34);
		Matcher m = pattern.matcher(htmlInfo);
		int lastEndIndex = 0;
		while (m.find(lastEndIndex)) {
			lastEndIndex = m.end();
			key = m.group(1);
		}
		return key.replace("\"", "").trim();
      }
    
    	public static void getEmailSql(){
      	  StringBuffer tempBuffer = new StringBuffer("");
    	  for(int i = 0 ; i < 3120 ; i += 60){
    		  String tempHtml = getHtml("http://club.baobao.sohu.com/l-zz1004-" + i + "-0-900-0.html");
        	  //System.out.println(tempHtml);
    		  tempBuffer.append(getEmail(tempHtml)); 		    		  
    		  
    		  System.out.println("第" + i + "条记录成功");
    	  }
//    	  System.out.println(getEmail(getHtml("http://club.baobao.sohu.com/l-zz1004-0-0-900-0.html")));
		  tempBuffer.append("insert into shop_email (select distinct(email_url) from shop_email_temp);\n");
		  tempBuffer.append("delete from shop_email_temp;\n");
		  tempBuffer.append("commit;\n");
    	  FileUtil.createFile("c://ceshi.sql",tempBuffer.toString());
    	}
      /**
       * args1 网址 
       * args2 
       * @param args
       */
      public static void main(String[] args){
    	  getEmailSql();
      }
}