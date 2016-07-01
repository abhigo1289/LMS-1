package types;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;

    public class weekdays {
	private Calendar cal = null;
	private static int year;
	public ArrayList<Date> weekendList = null;
    public weekdays(String d) throws ParseException {
		
		
		SimpleDateFormat myFormat = new SimpleDateFormat("dd/MM/yyyy");
        year = getYear(d);
		System.out.println("year " + year);

		Date da = myFormat.parse(d);
		System.out.println("formated date " + myFormat.format(da));

		cal = Calendar.getInstance();

		// Sets the date to the 1st day of the 1st month of the specified
		// year
		cal.setTime(da);
		weekendList = new ArrayList<Date>(53);
	}

	
	public ArrayList<Date> findWeekends() {
		// The while loop ensures that you are only checking dates in the
		// specified year
		while (cal.get(Calendar.YEAR) == year) {
			// The switch checks the day of the week for Saturdays and Sundays
			switch (cal.get(Calendar.DAY_OF_WEEK)) {
			case Calendar.SATURDAY:
			case Calendar.SUNDAY:
				weekendList.add(cal.getTime());// returns true or false
				break;
			}
			// Increment the day of the year for the next iteration of the while
			// loop
			cal.add(Calendar.DAY_OF_YEAR, 1);
		}
		return weekendList;

	}

	// Convenience method which just displays the contents of the ArrayList to
	// the //console
	public void displayWeekends() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		for (int i = 0; i < weekendList.size(); i++) {
			System.out.println("WEEKEND : " + sdf.format((Date) weekendList.get(i)));
		}

	}

	public int getYear(String d) throws ParseException {
		SimpleDateFormat myFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = myFormat.parse(d);
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(date);
		int year = calendar.get(Calendar.YEAR);
		return year;
	}

	public static void main(String[] args) throws ParseException {
		// The program requires one argument of a year, so for example you could
		// run //the program with "java WeekendCalculator 2016"
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter date in dd/MM/yyyy format");
		String dd = sc.next();
		weekdays wf = new weekdays(dd);
		wf.findWeekends();
		wf.displayWeekends();
	}

}
