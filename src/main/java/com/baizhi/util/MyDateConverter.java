package com.baizhi.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * 自己定义的类型转换器
 * @author Carry
 *
 */
public class MyDateConverter implements Converter<String, Date> {

	private final String[] patterns=new String[]{"yyyy-MM-dd","yyyy/MM/dd","yyyy.MM.dd","yyyy年MM月dd日","yyyy/MM/dd hh:mm:ss"};
	
	@Override
	public Date convert(String arg0) {
		for (int i = 0; i < patterns.length; i++) {
			System.out.println("自定义类型转换器");
			SimpleDateFormat sdf = new SimpleDateFormat(patterns[i]);
			try {
				Date date=sdf.parse(arg0);
				return date;
			} catch (ParseException e) {
				//e.printStackTrace();
			}
			
		}
		
		//throw new RuntimeException("输入的日期格式的字符串不对");
		return null;
	}
	/*private String pattern="yyyy-MM-dd HH:mm:ss";
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}


	@Override
	public Date convert(String arg0) {
		//2018-10-24===>Date
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		try {
			Date date = sdf.parse(arg0);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return null;
	}*/

}
