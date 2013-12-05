package com.firstgroup.iflytekstudaily.util;

public class DateUtil {
	public static int subDays(String endDate, String startDate) {
		String[] startDateStrings = startDate.split("-");
		String[] endDateStrings = endDate.split("-");
		if ((Integer.valueOf(endDateStrings[0]) - Integer.valueOf(startDateStrings[0])) > 0) {
				
			return 10;
		}
		else if ((Integer.valueOf(endDateStrings[0]) - Integer.valueOf(startDateStrings[0])) < 0) {
				
			return 0;
		}
		else if ((Integer.valueOf(endDateStrings[0]) - Integer.valueOf(startDateStrings[0])) == 0) {
				
			  if ((Integer.valueOf(endDateStrings[1]) - Integer.valueOf(startDateStrings[1])) > 0) {
					
				return 10;
			   } 
			   else if ((Integer.valueOf(endDateStrings[1]) - Integer.valueOf(startDateStrings[1])) < 0) {
					
				return 0;
			   }
			   else if ((Integer.valueOf(endDateStrings[1]) - Integer.valueOf(startDateStrings[1])) == 0) {
					
				     if ((Integer.valueOf(endDateStrings[2]) - Integer.valueOf(startDateStrings[2])) == 0) {
						
					     return 1;
				      } 
				     else if ((Integer.valueOf(endDateStrings[2]) - Integer.valueOf(startDateStrings[2])) > 0) {
						
					   return (Integer.valueOf(endDateStrings[2]) - Integer.valueOf(startDateStrings[2]));
							
				    } 
				    else if ((Integer.valueOf(endDateStrings[2]) - Integer.valueOf(startDateStrings[2])) < 0) {
						
					  return 0;
				    } 
			}
		}
		return 0;

	}

}
