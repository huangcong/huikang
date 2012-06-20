/*
 * Created on 2005-3-1
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package com.up72.web.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * @author sunan
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class DateUtils {

	static Calendar cld;

	public static final long YEAR = 10000000000l;

	public static final long MONTH = 100000000;

	public static final long DAY = 1000000;

	public static final long HOUR = 10000;

	public static final long MINUTE = 100;

	public static long newDate() {
		long date = 0;
		return date;
	}

	public static long setYear(long date, long year) {
		date = year * YEAR + date % YEAR;
		return date;
	}

	public static long setYear(long date, String year) {
		long thisYear = 0;
		try {
			thisYear = Long.parseLong(year);
		} catch (Exception e) {
			return date;
		}

		return setYear(date, thisYear);
	}

	public static long getYear(long date) {

		return date / YEAR;
	}

	public static long setMonth(long date, long month) {
		long year = getYear(date);
		date = date - year * YEAR;
		date = month * MONTH + date % MONTH;

		return year * YEAR + date;
	}

	public static long setMonth(long date, String month) {
		long thisMonth = 0;
		try {
			thisMonth = Long.parseLong(month);
		} catch (Exception e) {
			return date;
		}

		return setMonth(date, thisMonth);
	}

	public static long getMonth(long date) {
		long year = getYear(date);
		date = date - year * YEAR;

		return date / MONTH;
	}

	public static long setDay(long date, long day) {
		long year = getYear(date);
		long month = getMonth(date);
		date = (date - year * YEAR) - month * MONTH;
		date = day * DAY + date % DAY;

		return year * YEAR + month * MONTH + date;
	}

	public static long setDay(long date, String day) {
		long thisDay = 0;
		try {
			thisDay = Long.parseLong(day);
		} catch (Exception e) {
			return date;
		}

		return setDay(date, thisDay);
	}

	public static long getDay(long date) {
		long year = getYear(date);
		long month = getMonth(date);
		date = date - year * YEAR - month * MONTH;

		return date / DAY;
	}

	public static long setHour(long date, long hour) {
		long thisDate = 0;
		long year = getYear(date);
		long month = getMonth(date);
		long day = getDay(date);

		thisDate = date % HOUR;
		thisDate = year * YEAR + month * MONTH + day * DAY + hour * HOUR
				+ thisDate;

		return thisDate;
	}

	public static long setHour(long date, String hour) {
		long thisHour = 0;
		try {
			thisHour = Long.parseLong(hour);
		} catch (Exception e) {
			return date;
		}

		return setHour(date, thisHour);

	}

	public static long getHour(long date) {
		long hour = 0;
		hour = date % DAY;
		hour = hour / HOUR;
		return hour;
	}

	public static String getHour() {
		Calendar c = Calendar.getInstance();
		return towStr(c.get(c.HOUR_OF_DAY));
	}

	public static long setMinute(long date, long minute) {
		long thisDate = 0;
		long year = getYear(date);
		long month = getMonth(date);
		long day = getDay(date);
		long hour = getHour(date);

		thisDate = date % MINUTE;
		thisDate = year * YEAR + month * MONTH + day * DAY + hour * HOUR
				+ minute * MINUTE + thisDate;

		return thisDate;
	}

	public static long setMinute(long date, String minute) {
		long thisMinute = 0;
		try {
			thisMinute = Long.parseLong(minute);
		} catch (Exception e) {
			return date;
		}

		return setMinute(date, thisMinute);
	}

	public static long getMinute(long date) {
		long minute = 0;

		minute = date % HOUR;
		minute = minute / MINUTE;

		return minute;
	}

	public static long setSecond(long date, long second) {
		long thisDate = 0;
		long year = getYear(date);
		long month = getMonth(date);
		long day = getDay(date);
		long hour = getHour(date);
		long minute = getMinute(date);

		thisDate = year * YEAR + month * MONTH + day * DAY + hour * HOUR
				+ minute * MINUTE + second;

		return thisDate;
	}

	public static long setSecond(long date, String second) {
		long thisSecond = 0;
		try {
			thisSecond = Long.parseLong(second);
		} catch (Exception e) {
			return date;
		}

		return setSecond(date, thisSecond);
	}

	public static long getSecond(long date) {
		long second = 0;
		second = date % MINUTE;

		return second;
	}

	public static long getNowDate() {
		long date = 0;
		Date nowDate = new Date();
		DateFormat df = DateFormat.getDateInstance();
		String sDate = df.format(nowDate);
		int start = 0;
		int end = 0;
		String year = null;
		String month = null;
		String day = null;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			year = sDate.substring(start, end);
		}
		start = end + 1;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			month = sDate.substring(start, end);
		}
		start = end + 1;
		day = sDate.substring(start);
		/**
		 * debug start
		 */
		// System.out.println("year: " + year + "/month: " + month + "/day: " +
		// day);
		/**
		 * debug end
		 */
		date = setYear(date, year);
		date = setMonth(date, Long.parseLong(month));
		date = setDay(date, day);

		return date;
	}

	public static long getNowDateTime() {
		long date = 0;

		Date nowDate = new Date();
		DateFormat df = DateFormat.getDateTimeInstance();
		String sDate = df.format(nowDate);
		int start = 0;
		int end = 0;
		String year = null;
		String month = null;
		String day = null;
		String hour = null;
		String minute = null;
		String second = null;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			year = sDate.substring(start, end);
		}
		start = end + 1;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			month = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(" ", start);
		if (end > 0) {
			day = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(":", start);
		if (end > 0) {
			hour = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(":", start);
		if (end > 0) {
			minute = sDate.substring(start, end);
		}

		start = end + 1;
		second = sDate.substring(start);

		/**
		 * debug start
		 */
		// System.out.println("year: " + year + "/month: " + month + "/day: " +
		// day + "/hour: " + hour + "/minute: " + minute + "/second: " + second
		// + "\n" + sDate);
		/**
		 * debug end
		 */

		date = setYear(date, year);
		date = setMonth(date, month);
		date = setDay(date, day);
		date = setHour(date, hour);
		date = setMinute(date, minute);
		date = setSecond(date, second);
		return date;
	}

	public static String getDate(long date, String separator) {
		String returnDate = null;
		String day = null;
		String month = null;
		String year = null;
		year = Long.toString(getYear(date));
		if (getMonth(date) < 10) {
			month = "0" + Long.toString(getMonth(date));
		} else {
			month = Long.toString(getMonth(date));
		}

		if (getDay(date) < 10) {
			day = "0" + Long.toString(getDay(date));
		} else {
			day = Long.toString(getDay(date));
		}
		returnDate = year + separator + month + separator + day;

		return returnDate;
	}

	public static String getDate(long date) {
		String returnDate = "";
		String day = null;
		String month = null;
		String year = null;
		year = Long.toString(getYear(date));
		if (getMonth(date) < 10) {
			month = "0" + Long.toString(getMonth(date));
		} else {
			month = Long.toString(getMonth(date));
		}

		if (getDay(date) < 10) {
			day = "0" + Long.toString(getDay(date));
		} else {
			day = Long.toString(getDay(date));
		}
		returnDate = year + "-" + month + "-" + day;

		return returnDate;
	}

	public static String getDateCn(long date) {
		String returnDate = "";
		String day = null;
		String month = null;
		String year = null;
		String hour = null;
		String minute = null;
		String second = null;

		year = Long.toString(getYear(date));
		if (getMonth(date) < 10) {
			month = "0" + Long.toString(getMonth(date));
		} else {
			month = Long.toString(getMonth(date));
		}

		if (getDay(date) < 10) {
			day = "0" + Long.toString(getDay(date));
		} else {
			day = Long.toString(getDay(date));
		}

		if (getHour(date) < 10) {
			hour = "0" + Long.toString(getHour(date));
		} else {
			hour = Long.toString(getHour(date));
		}

		if (getMinute(date) < 10) {
			minute = "0" + Long.toString(getMinute(date));
		} else {
			minute = Long.toString(getMinute(date));
		}

		if (getSecond(date) < 10) {
			second = "0" + Long.toString(getSecond(date));
		} else {
			second = Long.toString(getSecond(date));
		}

		returnDate = year + "年" + month + "月" + day + "日" + hour + "点" + minute
				+ "分" + second + "秒";

		return returnDate;

	}

	public static long getDateTime(Date someDate) {
		long date = 0;

		Date nowDate = someDate;
		DateFormat df = DateFormat.getDateTimeInstance();
		String sDate = df.format(nowDate);
		int start = 0;
		int end = 0;
		String year = null;
		String month = null;
		String day = null;
		String hour = null;
		String minute = null;
		String second = null;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			year = sDate.substring(start, end);
		}
		start = end + 1;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			month = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(" ", start);
		if (end > 0) {
			day = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(":", start);
		if (end > 0) {
			hour = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(":", start);
		if (end > 0) {
			minute = sDate.substring(start, end);
		}

		start = end + 1;
		second = sDate.substring(start);

		/**
		 * debug start
		 */
		// System.out.println("year: " + year + "/month: " + month + "/day: " +
		// day + "/hour: " + hour + "/minute: " + minute + "/second: " + second
		// + "\n" + sDate);
		/**
		 * debug end
		 */

		date = setYear(date, year);
		date = setMonth(date, month);
		date = setDay(date, day);
		date = setHour(date, hour);
		date = setMinute(date, minute);
		date = setSecond(date, second);
		return date;
	}

	// 获取当前日期
	public static String getStrDate() {
		Calendar c = Calendar.getInstance();
		return c.get(Calendar.YEAR) + "-" + towStr((c.get(Calendar.MONTH) + 1))
				+ "-" + towStr(c.get(Calendar.DATE));
	}

	public static String getStrDateTime() {
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dd.format(new Date());
	}

	public static String format(Date date) {

		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.YEAR) + "-" + towStr(c.get(Calendar.MONTH) + 1)
				+ "-" + towStr(c.get(Calendar.DATE));

	}

	public static String format(long date) {

		Calendar c = Calendar.getInstance();
		c.setTime(new Date(date));
		return c.get(Calendar.YEAR) + "-" + towStr(c.get(Calendar.MONTH) + 1)
				+ "-" + towStr(c.get(Calendar.DATE));

	}

	public static long getDateTime(String someDate) {
		long date = 0;

		String format = "yyyy-MM-dd";
		if (someDate.length() > 10) {
			format = "yyyy-MM-dd HH:mm:ss";
		}
		SimpleDateFormat dd = new SimpleDateFormat(format);
		Date nowDate = new Date();
		try {
			nowDate = dd.parse(someDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Date nowDate = someDate;
		DateFormat df = DateFormat.getDateTimeInstance();
		String sDate = df.format(nowDate);
		int start = 0;
		int end = 0;
		String year = null;
		String month = null;
		String day = null;
		String hour = null;
		String minute = null;
		String second = null;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			year = sDate.substring(start, end);
		}
		start = end + 1;
		end = sDate.indexOf("-", start);
		if (end > 0) {
			month = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(" ", start);
		if (end > 0) {
			day = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(":", start);
		if (end > 0) {
			hour = sDate.substring(start, end);
		}

		start = end + 1;
		end = sDate.indexOf(":", start);
		if (end > 0) {
			minute = sDate.substring(start, end);
		}

		start = end + 1;
		second = sDate.substring(start);

		/**
		 * debug start
		 */
		// System.out.println("year: " + year + "/month: " + month + "/day: " +
		// day + "/hour: " + hour + "/minute: " + minute + "/second: " + second
		// + "\n" + sDate);
		/**
		 * debug end
		 */

		date = setYear(date, year);
		date = setMonth(date, month);
		date = setDay(date, day);
		date = setHour(date, hour);
		date = setMinute(date, minute);
		date = setSecond(date, second);
		return date;
	}

	// public static long stringToLong(String someDate) {
	// long date = 0;
	//
	// String sDate = someDate;
	// int start = 0;
	// int end = 0;
	// String year = null;
	// String month = null;
	// String day = null;
	// String hour = null;
	// String minute = null;
	// String second = null;
	// end = sDate.indexOf("-", start);
	// if (end > 0) {
	// year = sDate.substring(start, end);
	// }
	// start = end + 1;
	// end = sDate.indexOf("-", start);
	// if (end > 0) {
	// month = sDate.substring(start, end);
	// }
	//
	// start = end + 1;
	// end = sDate.indexOf(" ", start);
	// if (end > 0) {
	// day = sDate.substring(start, end);
	// }
	//
	// start = end + 1;
	// end = sDate.indexOf(":", start);
	// if (end > 0) {
	// hour = sDate.substring(start, end);
	// }
	//
	// start = end + 1;
	// end = sDate.indexOf(":", start);
	// if (end > 0) {
	// minute = sDate.substring(start, end);
	// }
	//
	// start = end + 1;
	// second = sDate.substring(start);
	//
	// /**
	// * debug start
	// */
	// // System.out.println("year: " + year + "/month: " + month + "/day: " +
	// day + "/hour: " + hour + "/minute: " + minute + "/second: " + second +
	// "\n" + sDate);
	//
	// /**
	// * debug end
	// */
	//
	// date = setYear(date, year);
	// date = setMonth(date, month);
	// date = setDay(date, day);
	// date = setHour(date, hour);
	// date = setMinute(date, minute);
	// date = setSecond(date, second);
	// return date;
	// }

	public static long stringToLong(String someDate) {
		String format = "yyyy-MM-dd";
		if (someDate.length() > 10) {
			format = "yyyy-MM-dd HH:mm:ss";
		}
		SimpleDateFormat dd = new SimpleDateFormat(format);
		try {
			return dd.parse(someDate).getTime();
		} catch (Exception e) {
			return new Date().getTime();
		}
	}

	public static Date longToDate(Long param) {
		if (cld == null) {
			cld = new GregorianCalendar();
		}
		if (param != null) {
			cld.clear();
			cld.setTimeInMillis(param);
			Date d = cld.getTime();
			return d;
		} else {
			return null;
		}
	}

	public static long dateToLong(Date param) {
		long date = param.getTime();
		return date;
	}

	public static long dateToLong(int day) {
		Date date = new Date();// 取时间
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		calendar.add(calendar.DATE, day);// 把日期往后增加一天.整数往后推,负数往前移动
		date = calendar.getTime();
		// SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd
		// HH:ss");
		// String dateString = formatter.format(date);
		// System.out.println(dateString);
		return date.getTime();
	}

	/**
	 * Parse a datetime string.
	 * 
	 * @param param
	 *            datetime string, pattern: "yyyy-MM-dd HH:mm:ss".
	 * @return java.util.Date
	 */
	public static Date parse(String param) {
		Date date = null;
		if (param == null) {
			return null;
		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			try {
				date = sdf.parse(param);
			} catch (ParseException ex) {
			}
			return date;
		}
	}

	/**
	 * 获取一周中的第一天
	 */
	public static String getFirstDateOfWeek() {
		Calendar c = Calendar.getInstance();
		int dd = c.get(GregorianCalendar.DAY_OF_WEEK);
		if (dd == 1)
			dd = 7;
		else if (dd > 1)
			dd = dd - 1;
		c.add(Calendar.DATE, 1 - dd);
		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-"
				+ towStr(c.get(Calendar.DATE));
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// try {
		// return sdf.parse(date);
		// } catch (ParseException e) {
		// return new Date();
		// }
		return date;
	}

	/**
	 * 获取一周中的第一天
	 */
	public static String getLastDateOfMonth() {
		Calendar c = new GregorianCalendar();
		c.set(Calendar.DATE, 1);
		c.roll(Calendar.DATE, -1);
		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-"
				+ towStr(c.get(Calendar.DATE));
		// SimpleDateFormat simpleFormate = new SimpleDateFormat( " yyyy-MM-dd "
		// );
		// System.out.println(simpleFormate.format(calendar.getTime()));
		return date;
	}

	/**
	 * 获取当月中的第一天
	 */
	public static String getFirstDateOfCurrentMonth() {
		Calendar c = Calendar.getInstance();

		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-01";

		return date;
	}

	/**
	 * 获取一周中的第一天
	 */
	public static String getFirstDateOfWeek(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		int dd = c.get(GregorianCalendar.DAY_OF_WEEK);
		if (dd == 1)
			dd = 7;
		else if (dd > 1)
			dd = dd - 1;
		c.add(Calendar.DATE, 1 - dd);
		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-"
				+ towStr(c.get(Calendar.DATE));
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// try {
		// return sdf.parse(date);
		// } catch (ParseException e) {
		// return new Date();
		// }
		return date;
	}

	public static String getDateOfWeek(String week) {
		if (week == null)
			return "";

		Calendar c = Calendar.getInstance();
		int dd = c.get(GregorianCalendar.DAY_OF_WEEK);

		if (week.equals("星期一")) {
			c.add(Calendar.DATE, 2 - dd);
		} else if (week.equals("星期二")) {
			c.add(Calendar.DATE, 3 - dd);
		} else if (week.equals("星期三")) {
			c.add(Calendar.DATE, 4 - dd);
		} else if (week.equals("星期四")) {
			c.add(Calendar.DATE, 5 - dd);
		} else if (week.equals("星期五")) {
			c.add(Calendar.DATE, 6 - dd);
		} else if (week.equals("星期六")) {
			c.add(Calendar.DATE, 7 - dd);
		} else if (week.equals("星期日")) {
			c.add(Calendar.DATE, 8 - dd);
		}

		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-"
				+ towStr(c.get(Calendar.DATE));
		return date;
	}

	/**
	 * 获取一周中的最后一天
	 */
	public static String getLastDateOfWeek() {
		Calendar c = Calendar.getInstance();
		int dd = c.get(GregorianCalendar.DAY_OF_WEEK);
		if (dd == 1)
			dd = 7;
		else if (dd > 1)
			dd = dd - 1;
		c.add(Calendar.DATE, 7 - dd);
		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-"
				+ towStr(c.get(Calendar.DATE));
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// try {
		// return sdf.parse(date);
		// } catch (ParseException e) {
		// return new Date();
		// }
		return date;
	}

	/**
	 * 获取一周中的最后一天
	 */
	public static String getLastDateOfWeek(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		int dd = c.get(GregorianCalendar.DAY_OF_WEEK);
		if (dd == 1)
			dd = 7;
		else if (dd > 1)
			dd = dd - 1;
		c.add(Calendar.DATE, 7 - dd);
		String date = c.get(Calendar.YEAR) + "-"
				+ towStr(1 + c.get(Calendar.MONTH)) + "-"
				+ towStr(c.get(Calendar.DATE));
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// try {
		// return sdf.parse(date);
		// } catch (ParseException e) {
		// return new Date();
		// }
		return date;
	}

	/**
	 * 获取某个时间段中的日期列表
	 */
	public static List<String> getDatesBetween(String beginDate, String endDate) {
		List<String> dates = new ArrayList<String>();
		int num = diffDate(stringToLong(beginDate), stringToLong(endDate));
		for (int i = 0; i < num; i++) {
			dates.add(diffDate(beginDate, i));
		}

		return dates;
	}

	public static String towStr(int n) {
		if (n < 10)
			return "0" + n;
		else
			return "" + n;
	}

	/**
	 * 将未指定格式的日期字符串转化成java.util.Date类型日期对象 <br>
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static Date parseStringToDate(String date) throws ParseException {
		Date result = null;
		String parse = date;
		parse = parse.replaceFirst("^[0-9]{4}([^0-9]?)", "yyyy$1");
		parse = parse.replaceFirst("^[0-9]{2}([^0-9]?)", "yy$1");
		parse = parse.replaceFirst("([^0-9]?)[0-9]{1,2}([^0-9]?)", "$1MM$2");
		parse = parse.replaceFirst("([^0-9]?)[0-9]{1,2}( ?)", "$1dd$2");
		parse = parse.replaceFirst("( )[0-9]{1,2}([^0-9]?)", "$1HH$2");
		parse = parse.replaceFirst("([^0-9]?)[0-9]{1,2}([^0-9]?)", "$1mm$2");
		parse = parse.replaceFirst("([^0-9]?)[0-9]{1,2}([^0-9]?)", "$1ss$2");

		DateFormat format = new SimpleDateFormat(parse);

		result = format.parse(date);

		return result;
	}

	/**
	 * 将未指定格式的日期字符串转化成java.util.Date类型日期对象 <br>
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static int getWeeksBetwinDate(Date beginDate) {
		Calendar now = Calendar.getInstance();
		Calendar b = Calendar.getInstance();
		b.setTime(beginDate);
		int beginWeek = b.get(Calendar.WEEK_OF_YEAR);
		int nowWeek = now.get(Calendar.WEEK_OF_YEAR);

		int beginYear = b.get(Calendar.YEAR);
		String lastDayOfWeek = DateUtils.getLastDateOfWeek();
		Date lastDate = new Date(DateUtils.stringToLong(lastDayOfWeek));

		Calendar last = Calendar.getInstance();
		last.setTime(lastDate);
		int nowYear = last.get(Calendar.YEAR);

		// System.out.println((nowYear-beginYear) * 52 + nowWeek-beginWeek + 1);
		return ((nowYear - beginYear) * 52 + nowWeek - beginWeek + 1);
	}

	/**
	 * 将未指定格式的日期字符串转化成java.util.Date类型日期对象 <br>
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static int getWeeksBetwinDate(Date beginDate, String date) {
		Date nowDate = new Date(DateUtils.stringToLong(date));

		Calendar now = Calendar.getInstance();
		now.setTime(nowDate);

		Calendar b = Calendar.getInstance();
		b.setTime(beginDate);
		int beginWeek = b.get(Calendar.WEEK_OF_YEAR);
		int nowWeek = now.get(Calendar.WEEK_OF_YEAR);

		int beginYear = b.get(Calendar.YEAR);
		String lastDayOfWeek = DateUtils.getLastDateOfWeek(nowDate);
		Date lastDate = new Date(DateUtils.stringToLong(lastDayOfWeek));

		Calendar last = Calendar.getInstance();
		last.setTime(lastDate);
		int nowYear = last.get(Calendar.YEAR);

		// System.out.println((nowYear-beginYear) * 52 + nowWeek-beginWeek + 1);
		return ((nowYear - beginYear) * 52 + nowWeek - beginWeek + 1);
	}

	/**
	 * 两日期相减
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static int diffDate(Date beginDate, Date endDate) {
		return diffDate(beginDate.getTime(), endDate.getTime());
	}

	/**
	 * 两日期相减
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static int diffDate(long beginDate, long endDate) {
		long diff = endDate - beginDate;

		long mint = (diff) / (1000);
		int hor = (int) mint / 3600;
		int secd = (int) mint % 3600;
		int day = (int) hor / 24;

		// System.out.println(day+1);
		return (day + 1);
	}

	/**
	 * 两日期相减
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static String diffDate(String beginDate, int num) {
		Date d = new Date();

		d = new Date(stringToLong(beginDate));

		Calendar c = Calendar.getInstance();
		c.setTime(d);
		c.add(Calendar.DAY_OF_YEAR, num);
		// c.roll(Calendar.DAY_OF_YEAR, true);
		// return DateUtils.getDate(c.getTime().getTime());
		return c.get(Calendar.YEAR) + "-" + towStr(c.get(Calendar.MONTH) + 1)
				+ "-" + towStr(c.get(Calendar.DATE));

		// System.out.println(day+1);
	}

	/**
	 * 两日期相减
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static String diffDate(Date date, int num) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);

		// System.out.println(c.get(Calendar.YEAR));
		// System.out.println(c.get(Calendar.MONTH));
		// System.out.println(c.get(Calendar.DAY_OF_MONTH));
		c.add(Calendar.DAY_OF_MONTH, (0 - num));
		// c.roll(Calendar.DAY_OF_MONTH, false);
		// System.out.println(c.get(Calendar.YEAR));
		// System.out.println(c.get(Calendar.MONTH));
		// System.out.println(c.get(Calendar.DAY_OF_MONTH));

		String strDate = c.get(Calendar.YEAR) + "-"
				+ towStr(c.get(Calendar.MONTH) + 1) + "-"
				+ towStr(c.get(Calendar.DATE));

		return strDate;

		// System.out.println(day+1);
	}

	/**
	 * 返回指定日期是星期几
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static int getDayOfWeek(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.get(calendar.DAY_OF_WEEK) - 1;
	}

	/**
	 * 返回某月的开始与结束日期
	 * 
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static Long[] getBeginAndEndDateOfMonth(String date) {
		// Calendar calendar = Calendar.getInstance();
		// calendar.setTime(date);
		// return calendar.get(calendar.DAY_OF_WEEK)-1;

		String d[] = date.split("-");
		int year = Integer.parseInt(d[0]);
		int month = Integer.parseInt(d[1]);
		// Calendar bd = Calendar.getInstance();
		// c.set(c.YEAR, year);
		// c.set(c.MONTH, month-1);
		// c.set(c.DATE, 15);

		Long[] ld = new Long[2];
		// ld[0] = c.get(c.DAY_OF_MONTH);
		Calendar bd = Calendar.getInstance();
		bd.set(bd.YEAR, year);
		bd.set(bd.MONTH, month - 1);
		bd.set(bd.DAY_OF_MONTH, 1);
		String bds = bd.get(bd.YEAR) + "-" + towStr(bd.get(bd.MONTH) + 1) + "-"
				+ towStr(bd.get(bd.DATE));
		System.out.println(bds);

		Calendar ed = Calendar.getInstance();
		ed.set(ed.YEAR, year);
		ed.set(ed.MONTH, month);
		ed.set(ed.DAY_OF_MONTH, 1);
		ed.add(ed.DATE, -1);
		String eds = ed.get(ed.YEAR) + "-" + towStr(ed.get(ed.MONTH) + 1) + "-"
				+ towStr(ed.get(ed.DATE));
		System.out.println(eds);

		ld[0] = DateUtils.stringToLong(bds);
		ld[1] = DateUtils.stringToLong(eds);

		return ld;

	}

	// 根据当前选择时间获得规定上传时间
	public static String getUploadDateOfWeek(String uploadValue, Date date) {
		// DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		// Date date = format.parse(weekDate);
		// Calendar c= Calendar.getInstance();
		// c.setTime(date);
		// c.add(Calendar.DATE, 1);
		// String d = c.get(Calendar.YEAR) + "-" + (1+c.get(Calendar.MONTH)) +
		// "-" + (c.get(Calendar.DATE));
		// System.out.println(d);

		if (uploadValue == null)
			return "";

		Calendar c = Calendar.getInstance();
		c.setTime(date);
		if (uploadValue.equals("星期一")) {
			c.add(Calendar.DATE, 0);
		} else if (uploadValue.equals("星期二")) {
			c.add(Calendar.DATE, 1);
		} else if (uploadValue.equals("星期三")) {
			c.add(Calendar.DATE, 2);
		} else if (uploadValue.equals("星期四")) {
			c.add(Calendar.DATE, 3);
		} else if (uploadValue.equals("星期五")) {
			c.add(Calendar.DATE, 4);
		} else if (uploadValue.equals("星期六")) {
			c.add(Calendar.DATE, 5);
		} else if (uploadValue.equals("星期日")) {
			c.add(Calendar.DATE, 6);
		}
		String d = c.get(Calendar.YEAR) + "-" + (1 + c.get(Calendar.MONTH))
				+ "-" + (c.get(Calendar.DATE));
		return d;
	}

	public static Date parseStr(String param) {
		Date date = null;
		if (param == null) {
			return null;
		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				date = sdf.parse(param);
			} catch (ParseException ex) {
			}
			return date;
		}
	}

	public static String DateToString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}

	/**
	 * Return short format datetime string.
	 * 
	 * @param date
	 *            java.util.Date
	 * @return short format datetime
	 */
	public static String longToDateStr(Long param) {
		if (cld == null) {
			cld = new GregorianCalendar();
		}
		if (param != null) {
			cld.clear();
			cld.setTimeInMillis(param);
			Date d = cld.getTime();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			return sdf.format(d);
		} else {
			return null;
		}

	}

	/**
	 * Return current datetime string.
	 * 
	 * @return current datetime, pattern: "yyyy-MM-dd HH:mm:ss".
	 */
	public static String getDateTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dt = sdf.format(new Date());
		return dt;
	}

	/**
	 * Return current datetime string.
	 * 
	 * @param pattern
	 *            format pattern
	 * @return current datetime
	 */
	public static String getDateTimeStr(String pattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		String dt = sdf.format(new Date());
		return dt;
	}

	/**
	 * Return short format datetime string.
	 * 
	 * @param date
	 *            java.util.Date
	 * @return short format datetime
	 */
	public static String shortFmt(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		return sdf.format(date);
	}

	public static String format(Long time, String fmt) {
		if (time != null) {
			SimpleDateFormat sdf = new SimpleDateFormat(fmt);
			return sdf.format(new Date(time));
		} else {
			return "";
		}
	}

	public static void main(String[] args) throws ParseException {

	}

}
