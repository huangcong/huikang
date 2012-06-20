package com.up72.web.util;

/**
 * 邮件发送工具类
 * 
 * @author xxh
 * @link 
 * 
 * @version $Revision: 1.00 $ $Date: 2009-12-18
 */

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import com.up72.huikang.CommonConstants;

public class MailUtil {
	public static boolean DEBUG = false;
	/**
	 * 发送邮件不带附件
	 * @author bxmen
	 * @param user			用户名
	 * @param password		密码
	 * @param smtpHost		邮件服务器
	 * @param userName		发件人姓名
	 * @param toAddr		接收者
	 * @param subject		邮件主题
	 * @param body 			邮件内容
	 * @summary 
	 */
	public void send(String user, String password, String smtpHost, String userName, String toAddr, String subject, String body) {
		try { 
			Authenticator auth = new MailAuthenticator(user, password);

			Properties props = new Properties(); 
			//指定SMTP服务器，邮件通过它来投递
			props.put("mail.smtp.host", smtpHost);
			props.put("mail.smtp.auth", "true");
			
			Session session =Session.getInstance(props, auth);
			Message msg = new MimeMessage(session); 
			//指定发信人中文名称
			if(null!=userName && !userName.trim().equals("")){
				msg.setFrom(new InternetAddress(user, userName));
			}else{
				msg.setFrom(new InternetAddress(user));
			}
			
			//指定收件人，多人时用逗号分隔
			InternetAddress[] tos = InternetAddress.parse(toAddr); 
			msg.setRecipients(Message.RecipientType.TO, tos);
			//标题//转码BASE64Encoder
			String smtpEncode = "";
			if(null == smtpEncode ||smtpEncode.trim().equals("")){
				smtpEncode = "utf-8";
			}
			((MimeMessage)msg).setSubject(subject,smtpEncode);
			//得到中文标题for linux，windows下不用;
			//内容
			msg.setText(body);
			// 发送时间
			msg.setSentDate(new Date());
			//内容类型Content-type
			String smtpME = "";
			if(null == smtpME || smtpME.trim().equals("")){
				smtpME = "utf-8";
			}
			msg.setContent(body, "text/html;charset="+smtpME);
			//发送
			Transport.send(msg);
		} catch(MessagingException e){ 
			if(DEBUG){
				e.printStackTrace();
			}
		} catch (UnsupportedEncodingException e) {
			if(DEBUG){
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 发送邮件带附件
	 * @author bxmen
	 * @param user			用户名
	 * @param password		密码
	 * @param smtpHost		邮件服务器
	 * @param userName		发件人姓名
	 * @param toAddr		接收者
	 * @param subject		邮件主题
	 * @param body 			邮件内容
	 * @param paths 		文件路径
	 * @summary 
	 */
	public void send(String user, String password, String smtpHost, String userName, String toAddr, String subject, String body, String[] paths) {
		try { 
			Authenticator auth = new MailAuthenticator(user, password);

			Properties props = new Properties(); 
			//指定SMTP服务器，邮件通过它来投递
			props.put("mail.smtp.host", smtpHost);
			props.put("mail.smtp.auth", "true");
			
			Session session =Session.getInstance(props, auth);
			MimeMessage msg = new MimeMessage(session);
			//指定发信人中文名称
			if(null!=userName && !userName.trim().equals("")){
				msg.setFrom(new InternetAddress(user, userName));
			}else{
				msg.setFrom(new InternetAddress(user));
			}
			
			//指定收件人，多人时用逗号分隔
			InternetAddress[] tos = InternetAddress.parse(toAddr); 
			msg.setRecipients(Message.RecipientType.TO, tos);
			//标题//转码BASE64Encoder
			String smtpEncode = "";
			if(null == smtpEncode ||smtpEncode.trim().equals("")){
				smtpEncode = "utf-8";
			}
			msg.setSubject(subject,smtpEncode);
			Multipart multipart = new MimeMultipart();
			MimeBodyPart mimeBodyPart = new MimeBodyPart();
			if (body != null && !body.equals("")) {
				mimeBodyPart.setText(body, "GBK");
			} else {
				mimeBodyPart.setText(new String(), "GBK");
			}
			multipart.addBodyPart(mimeBodyPart);
			
			// 在第二部分信息中附加文件
			if (paths != null) {
				for (int i = 0; i < paths.length; i++) {
					//得到文件路径
					String path = paths[i];
					//获取文件名称
					String fileName = path.substring(path.lastIndexOf("/")+1, path.length());
					MimeBodyPart mimeBodyPart2 = new MimeBodyPart();
					FileDataSource fds = new FileDataSource(CommonConstants.ROOTPATH + paths[i]);
					mimeBodyPart2.setDataHandler(new DataHandler(fds));
					mimeBodyPart2.setFileName(MimeUtility.encodeText(fileName));
					multipart.addBodyPart(mimeBodyPart2);
				}
			}
			// 增加 Multipart 到信息体
			msg.setContent(multipart);
			msg.setSentDate(new Date());
			Transport transport = session.getTransport("smtp");
			transport.send(msg);
		} catch(MessagingException e){ 
			if(DEBUG){
				e.printStackTrace();
			}
		} catch (UnsupportedEncodingException e) {
			if(DEBUG){
				e.printStackTrace();
			}
		}
	}
	//获取所有邮件列表
	public Message[] receive(String smtpHost, String user, String password) throws MessagingException{
		return receive(smtpHost, user, password, 0, 0);
	}
	
	//分页邮件列表
	public Message[] receive(String smtpHost, String user, String password, Integer pageNum, Integer range) throws MessagingException{
		//Create empty properties
		Properties props = new Properties();
		//Get session
		Session session = Session.getDefaultInstance(props, null);
		//Get the store
		Store store = session.getStore("pop3");
		store.connect(smtpHost, user, password);
		//Get folder
		Folder folder = store.getFolder("INBOX");
		folder.open(Folder.READ_ONLY);
		//Get directory
		Message[] message = null;
		if((null != pageNum && pageNum!=0) && (null != range && range!=0)){
			Integer count = folder.getMessageCount();
			Integer start = count - (pageNum*range)+1;
			if(start<0){
				start = 1;
			}
			Integer end = count - ((pageNum-1)*range);
			if(end<0){
				end = 10;
			}
			message = folder.getMessages(start, end);
		}else{
			message = folder.getMessages();
		}
		for (int i=message.length-1; i>=0; i--) {
			System.out.println(i + ": " + message[i].getFrom()[0] + "\t" + message[i].getSubject() + "\t" + DateUtils.DateToString(message[i].getSentDate()));
		}
		// Close connection 
		folder.close(false);
		store.close();
		return message;
	}


	public static void main(String args[]) throws AddressException, MessagingException{
//			Random random = new Random();
//			String password = Math.abs(random.nextInt())+ "";
//			StringBuffer content = new StringBuffer();
//			content.append("您好！用户 Mr.Men ***** 在radio的密码为： "+password+"<br/>(该邮件为系统邮件，请勿回复，登录后请及时修改您的密码。)");
//	//
//			System.out.println(content.toString());
//			String mailHost = "smtp.163.com";//pu.getValue("mail.send.host");
			String mailHost = "pop.163.com";
			String mailEmail = "EgoTown2010@163.com";//pu.getValue("mail.send.email");
			String mailPassword = "20100205";//pu.getValue("mail.send.password");
//			MailUtil mailUtil = new MailUtil();
//			String[] paths = new String[]{"E:/jml获得MSN好友列表.rar"};
//			mailUtil.send(mailEmail, mailPassword, mailHost, "慧康一号", "ning-lovelove@163.com", "测试", content.toString(), paths);
//			System.out.println("Mail Send Success");
		MailUtil mailUtil = new MailUtil();
		mailUtil.receive(mailHost, mailEmail, mailPassword, 2, 20);
	}
}



class MailAuthenticator extends Authenticator {
	private String user;
	private String password;

	public MailAuthenticator() {

	}

	public MailAuthenticator(String user, String password) {
		this.user = user;
		this.password = password;
	}

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(user, password);
	}
}