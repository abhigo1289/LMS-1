package com.calculation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class LeaveCalculator {

	static String from;
	static String to;
	static SimpleDateFormat myFormat;
	static SimpleDateFormat year;
	static double countplanedleaves;
	static ArrayList<Date> weekends;
	static ArrayList<Date> listofTotalweekends;
	static int exactyear = 0;
	static int totalHolidays = 0;
	static int satsundays;
	public static String weekkend;

	private static Calendar cal = null;
	private static int year1;
	private static int year2;

	public static ArrayList<Date> weekendList = null;
	public static ArrayList<Date> weekendList1 = null;
	public static ArrayList<Date> weekendList2 = null;



	public  int LeavedaysCounter(String datefrom, String dateupto) {

		myFormat = new SimpleDateFormat("dd/MM/yyyy");
		try {
			weekends = WeekendsCount(datefrom, dateupto);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		for (Date d : weekends) {
			System.out.println(myFormat.format(d));
		}
		int count = weekends.size();
		System.out.println(count);

		return count;
	}

	
	//To get Weekends between given Dates
	public  ArrayList<Date> WeekendsCount(String from, String to) throws ParseException {
		
		
		ArrayList<Date> dates = new ArrayList<Date>();
		
		

		Date startDate = myFormat.parse(from);
		Date endDate = myFormat.parse(to);

		long interval = 24 * 1000 * 60 * 60; // 1 hour in milliseconds
		long endTime = endDate.getTime(); // creating endtime 
											
		long curTime = startDate.getTime();
		while (curTime <= endTime) {
			dates.add(new Date(curTime));
			curTime += interval;
		}
		
		satsundays = 0;
		listofTotalweekends = weekdays(from, to);
		for (Date date : listofTotalweekends) {

			for (Date hi : dates) {
				if (date.equals(hi)) {
					weekkend = myFormat.format(hi);
					satsundays++;

				}
			}
		}
		dates.removeAll(listofTotalweekends);
		return dates;
	}

	public  ArrayList<Date> weekdays(String from, String to) {
		
		
		weekendList = new ArrayList<Date>(53);
		Date yearpattern1 = null;
		Date yearpattern2 = null;
		try {
			year1 = getYear(from);
			year2 = getYear(to);
			yearpattern1 = myFormat.parse(from);
			yearpattern2 = myFormat.parse(to);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if (year1 == year2) {
			cal = Calendar.getInstance();
			cal.setTime(yearpattern1);
			weekendList = findWeekends(year1);
			return weekendList;
		} else {
			
			cal = Calendar.getInstance();
			cal.setTime(yearpattern1);
			weekendList1 = new ArrayList<Date>(53);
			weekendList = findWeekends(year1);
			

			cal.setTime(yearpattern2);
			weekendList2 = new ArrayList<Date>(53);
			weekendList = findWeekends(year2);
			

			

			return weekendList;
		}

	}

	public  int getYear(String d) throws ParseException {
		SimpleDateFormat myFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = myFormat.parse(d);
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		exactyear = calendar.get(Calendar.YEAR);
		return exactyear;
	}

	public  ArrayList<Date> findWeekends(int year1) {
		// The while loop ensures that you are only checking dates in the
		// specified year

		Date dd = null;
		try {
			dd = myFormat.parse("01/01/" + year1);
		} catch (ParseException e) {

			e.printStackTrace();
		}
		Calendar calend = Calendar.getInstance();
		calend.setTime(dd);

		while (calend.get(Calendar.YEAR) == year1) {
			// The switch checks the day of the week for Saturdays and Sundays
			switch (calend.get(Calendar.DAY_OF_WEEK)) {
			case Calendar.SATURDAY:
			case Calendar.SUNDAY:

				weekendList.add(calend.getTime());// returns true or false
				break;
			}
			// Increment the day of the year for the next iteration of the while
			// loop
			calend.add(Calendar.DAY_OF_YEAR, 1);
		}

		return weekendList;

	}

}
