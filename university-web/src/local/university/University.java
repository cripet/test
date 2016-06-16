package local.university;

import java.util.ArrayList;
import java.util.Arrays;

public class University {

	public static ArrayList<Faculty> faculties = new ArrayList<>(
			Arrays.asList(
					new Faculty("Computing science", 500), 
					new Faculty("FRISPA", 120), 
					new Faculty("FMI", 900)
					));

}
