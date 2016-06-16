package local.university;

public class Faculty {

	public String name;
	public int positions;
	
	public Faculty(){}
	
	public Faculty(String name, int positions) {
		this.name = name;
		this.positions = positions;
	}

	@Override
	public String toString() {
		return "Faculty [name=" + name + ", positions=" + positions + "]";
	}
	
}
