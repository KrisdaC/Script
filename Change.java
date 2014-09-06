package convert;

public class Change {

	public static void main(String[] args) {
		String a = "Hi, my name is, dog";
	    a = a.replaceAll("a", "");
	    a.replaceAll(",", "");
		System.out.println(changeString(a));

	}

	public static String changeString(String s) {
		String sentence = "";
		for(int i=0; i<s.length(); i++){
			if (s.charAt(i) == ' '){
				sentence += " " + Character.toString(s.charAt(i+1)).toUpperCase();
				i++;
			}
			else{
				sentence += s.charAt(i);
			}
		}
		return sentence;
	}
}
