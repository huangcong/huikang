package com.up72.web.util;


import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 文件操作类
 * @author 贺杰
 *
 */
public class FileUtil {
	
	/**
	 * 写入文件
	 * @param content 内容
	 * @param path 文件路径
	 * @param result 是否追加
	 */
	public static void appendMethod(String content,String filePath,boolean result) {
			// 打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件
//			FileWriter writer = new FileWriter(filePath, result);
//			writer.write(content);
//			writer.close();
			StringBuffer sbf = new StringBuffer();
			String str = readFileByLines(filePath);
			sbf.append(str);
			sbf.append(content);
			createFile(filePath, sbf.toString());
	}
	
	
	public static String readFileByLines(String filePath){
		StringBuffer sbf = new StringBuffer();
		File f = new File(filePath);
		if(!f.exists()){
			createFile(filePath, "");
		}
		InputStreamReader read = null;
		BufferedReader reader = null;
		try {
			read = new InputStreamReader (new FileInputStream(f),"UTF-8");
		    reader=new BufferedReader(read);
			String line;
			while ((line = reader.readLine()) != null) {
				sbf.append(line);
			}
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}
		
		return sbf.toString();
	}
	
//	public static String readFileByLine2s(String filePath){
//		StringBuffer sbf = new StringBuffer();
//		File f = new File(filePath);
//		InputStreamReader read = null;
//		BufferedReader reader = null;
//		try {
//			read = new InputStreamReader (new FileInputStream(f));
//		    reader=new BufferedReader(read);
//			String line;
//			while ((line = reader.readLine()) != null) {
//				sbf.append(line);
//			}
//			
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		} catch (FileNotFoundException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}finally {
//			if (reader != null) {
//				try {
//					reader.close();
//				} catch (IOException e1) {
//				}
//			}
//			}
//		
//		return sbf.toString();
//	}
//	
	
	
	public static void createFile(String filePath, String content){
		OutputStreamWriter out = null;
		try {
			out = new OutputStreamWriter(new FileOutputStream(filePath),"gbk");
			out.write(content);
			out.flush(); 
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(out != null){
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				} 
			}
			
		}
		
	}
	
	
	
	/**
	 * 得到url集合
	 * @param path
	 * @return
	 */
	public static String [] getStoreUrls(String path){
		String temp [] = null;
		String urls ="";
		urls = readFileByLines(path);
		if(!urls.equals("")){
			temp  = urls.split("\\|");
		}
		return temp;
	}
	
    public static  void mkdir(String mkdirName)
    {
        try
        {
            File  dirFile = new File(mkdirName);     //mkdirName为传建文件夹路径
            boolean bFile   = dirFile.exists();
            if( bFile == true )
            {
               //System.out.println("The folder exists.");
            }
            else
            {
               bFile = dirFile.mkdir();
               if( bFile == true )
               {
                  //System.out.println("创建文件夹");
               }
               else
               {
                   //System.out.println(" 文件夹创建失败，清确认磁盘没有写保护并且空件足够");
//                   System.exit(1);
               }
            }
        }
        catch(Exception err)
        {
            //System.err.println("ELS - Chart : 文件夹创建发生异常");
            err.printStackTrace();
        }
    }

	public static void createFile(String filePath,String fileName, String content){
		mkdir(filePath);	
		createFile(filePath + fileName,content);
	}
	
	public static String getDefaultFileName() throws ParseException{
		SimpleDateFormat formatter_f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String  dateStr = formatter_f.format(new Date());
		String currentTime = String.valueOf(formatter_f.parse(dateStr).getTime());
		return currentTime;
	}
	
	public static String inputStream2String(InputStream is){
		   InputStreamReader in = null;
		   InputStreamReader read = null;
		   BufferedReader reader = null;
		   StringBuffer buffer = new StringBuffer();
		   try {
			   read = new InputStreamReader (is,"UTF-8");
			   String line = "";
			   reader=new BufferedReader(read);
			while ((line = reader.readLine()) != null){
			     buffer.append(line);
			   }
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e1) {
				}
			}
			}
		   return buffer.toString();
		}
	
	public static String inputStream2String(InputStream is,String charset){
		   InputStreamReader in = null;
		   InputStreamReader read = null;
		   BufferedReader reader = null;
		   StringBuffer buffer = new StringBuffer();
		   try {
			   read = new InputStreamReader (is,charset);
			   String line = "";
			   reader=new BufferedReader(read);
			while ((line = reader.readLine()) != null){
			     buffer.append(line);
			   }
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e1) {
				}
			}
			}
		   return buffer.toString();
		}
	
	
	
	
	public static void SaveFileFromInputStream(InputStream stream, String path) {
		String content = inputStream2String(stream);
		createFile(path, content);
	}
	
	
	public static InputStream String2InputStream(String str){
		   ByteArrayInputStream stream = new ByteArrayInputStream(str.getBytes());
		   return stream;
		}

	
	public static String getSavePath(){
		String dateStr = DateUtils.DateToString(new Date()) ;
		return dateStr;
	}
	

	/**
	 * 统计字符串个数
	 * @param path
	 * @param find
	 * @return
	 */
	public static int count(String path, String find){
		String str = readFileByLines(path).toLowerCase();
		return (str.length() - (str.replace(find, "").length())) / find.length();
	}

}
