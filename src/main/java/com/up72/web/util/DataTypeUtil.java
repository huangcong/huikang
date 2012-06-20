package com.up72.web.util;


public class DataTypeUtil {
  public DataTypeUtil() {
  }

  /**
   * ������ת��Ϊ������

   * @param  o  Դ����

   * @return    ��Ӧ������ֵ,�����,�򷵻�Integer.MIN_VALUE
   */
  public static int toInt(Object o) {
    if (o == null) {
      throw new IllegalArgumentException("�ö���Ϊ��");
    }
    String s = o.toString();
    try {
      return Integer.parseInt(s);
    }
    catch (Exception ex) {
      System.out.println(ex.getMessage());
      return Integer.MIN_VALUE;
    }
  }
}
