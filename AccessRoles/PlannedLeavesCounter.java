package types;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

public class PlannedLeavesCounter {
	    static SimpleDateFormat myFormat;
        static Scanner sc=new Scanner(System.in);
	    public static void main(String[] args) throws ParseException {
		double plannedleave = 0.0;
		double leaves = 0.0;
		System.out.println("enter joining date");
		String date=sc.next();
		SimpleDateFormat smp=new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat year=new SimpleDateFormat("yyyy");
		Date d=smp.parse(date);
		Calendar calendar =Calendar.getInstance();
		calendar.setTime(d);
		int dayOfYear = calendar.get(Calendar.DAY_OF_YEAR);  
		myFormat = new SimpleDateFormat("dd/MM/yyyy");
		System.out.println(dayOfYear);
		double con=(dayOfYear/90);
		double totalplannedLeaves=0.0;
		double usedPlanedLeaves=0.0;
		int num=0;
      if(con<1)
		{ 
			    num=90-dayOfYear;
			    leaves= Math.round(leaves + (num / (11.125)));
				leaves =leaves/2;
		        System.out.println("leaves in 1st quarter "+leaves);
			    totalplannedLeaves=totalplannedLeaves+leaves;
		    	System.out.println("totalplannedleaves "+totalplannedLeaves);
		}
	else if(con>=1 && con<2)
		{ 
			
			    num=181-dayOfYear;
			    leaves=  Math.round(leaves + (num / (11.125)));
				leaves =leaves/2;
			    System.out.println("leaves in 2nd quarter "+leaves);
			    
			    totalplannedLeaves=totalplannedLeaves+leaves;
		    	System.out.println("totalplannedleaves "+totalplannedLeaves);
		}
		else if(con>=2 && con<3)
		{
			 num=273-dayOfYear;
			 leaves= Math.round(leaves + (num / (11.125)));
		     leaves =leaves/2;
			          System.out.println("leaves in 3rd quarter "+leaves);
			         
			      	  totalplannedLeaves=totalplannedLeaves+leaves;
			    	  System.out.println("totalplannedleaves "+totalplannedLeaves);
		}
		else
		{
			 num=365-dayOfYear;
			 leaves= Math.round(leaves + (num / (11.125)));
				leaves =leaves/2;
			       System.out.println("leaves in 4th quarter "+leaves);
			         
			      	  totalplannedLeaves=totalplannedLeaves+leaves;
			    	  System.out.println("totalplannedleaves "+totalplannedLeaves);
		}
      
  
      
	} 

	
		
		
	
	}
	

