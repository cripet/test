package local.university;

import java.util.*;

public class Student {
 
	public static ArrayList<Faculty> faculties = new ArrayList<>(
			Arrays.asList(
					new Faculty("Computing science", 500), 
					new Faculty("FRISPA", 120), 
					new Faculty("FMI", 900)
					));

	
	
	public static void main(String[] args) {
	
		for (Faculty fac : faculties) {
			System.out.println(fac);
		
		}
	}
}
