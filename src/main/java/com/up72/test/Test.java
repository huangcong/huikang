package com.up72.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calendar c = Calendar.getInstance();
		System.out.println(c.get(Calendar.MONTH) + 1);
		System.out.println(c.getActualMaximum(Calendar.DATE));
		System.out.println(c.get(Calendar.YEAR));
	}

}
