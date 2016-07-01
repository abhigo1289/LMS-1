package types;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

public class LeaveApp {
	static int fh = 2;
	static String from;
	static String to;
	static SimpleDateFormat myFormat;
	static SimpleDateFormat year;
	static double countplanedleaves;
	static ArrayList<Date> weekends;
	static ArrayList<Date> listofTotalweekends;
	
	static int totalHolidays = 0;
	static int satsundays;
	public static String weekkend;
	
	public static void main(String[] args) throws ParseException {
		Scanner sc = new Scanner(System.in);
		System.out.println("enter your type of leave");
		System.out.println("1.Planned 2.Unplaned 3.Fh 4.Exit");
		int choice = sc.nextInt();
		myFormat = new SimpleDateFormat("dd/MM/yyyy");
		
		
		
			System.out.println("Enter The Date for Leave in dd/mm/yyyy format from:");
			from = sc.next();
			System.out.println("Enter The Date for Leave in dd/mm/yyyy format to:");
			to = sc.next();
			
			weekends = WeekendsCount(from, to);
//			Date simple = myFormat.parse(from);
			for (Date d : weekends) {
				 System.out.println(myFormat.format(d));
			}
            int count=weekends.size();
            System.out.println(count);
            
     
		
}

	public ArrayList<Date> totalHolidays() throws ParseException {
		SimpleDateFormat myFormat = new SimpleDateFormat("dd/MM/yyyy");
		String floating[] = { "06/07/2016", "07/07/2016", "25/08/2016", "05/09/2016", "12/09/2016,", "13/09/2016",
				"10/10/2016", "12/10/2016", "28/10/2016", "14/11/2016", "12/12/2016" };
		Date floatingHoliday[] = new Date[floating.length];
		int total = 0;
		ArrayList<Date> floatingHolidays = new ArrayList<Date>();
		System.out.println("Floating Holidays:");
		for (int i = 0; i < floatingHoliday.length; i++) {

			floatingHoliday[i] = myFormat.parse(floating[i]);
			floatingHolidays.add(floatingHoliday[i]);
			System.out.println(myFormat.format(floatingHoliday[i]));

			total++;

		}
		return floatingHolidays;
	}

	public static double plannedLeaveCount(String doj, String currentdate) {

		myFormat = new SimpleDateFormat("dd/MM/yyyy");

		double plannedleave = 0.0;
		try {
			Date date1 = myFormat.parse(doj);
			Date date2 = myFormat.parse(currentdate);
			long diff = date2.getTime() - date1.getTime();
			long daycount = TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
			System.out.println("Total Days: " + daycount);
			if (daycount >= 0) {
				plannedleave = Math.round(plannedleave + (daycount / (11.125)));
				plannedleave = plannedleave / 2;
				System.out.println("Planned Leaves Applicable:" + plannedleave);
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return plannedleave;
	}
	
	public static ArrayList<Date> WeekendsCount(String from, String to) throws ParseException {
		ArrayList<Date> dates = new ArrayList<Date>();
		System.out.println(from);
        System.out.println(to);
		
		Date startDate = myFormat.parse(from);
		Date endDate = myFormat.parse(to);
		
		long interval = 24 * 1000 * 60 * 60; // 1 hour in millis
		long endTime = endDate.getTime(); // create your endtime here, possibly
											// using Calendar or Date
		long curTime = startDate.getTime();

		while (curTime <= endTime) {
			dates.add(new Date(curTime));
			curTime += interval;
		}

		satsundays = 0;

		

		weekdays w= new weekdays(from);
		listofTotalweekends=w.findWeekends();
		
		
		for (Date date : listofTotalweekends) {

			for (Date hi : dates) {
				if (date.equals(hi)) {
					weekkend = myFormat.format(hi);
					System.out.println("weekEnds :"+weekkend);
					satsundays++;

				}
			}
		}
		dates.removeAll(listofTotalweekends);

//		for (Date date : dates) {
//			System.out.println("new date list " + myFormat.format(date));
//		}
	//	System.out.println("Total Saturdays & Sundays Till Your Current Date:" + satsundays + " Days");
		return dates;
	}

}
