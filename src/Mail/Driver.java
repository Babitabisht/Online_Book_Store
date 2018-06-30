package Mail;

import Mail.Mailer;

public class Driver {
	
public static void main(String gh[]) {
		
	
	String s="Welcome to Online Book store ,  a  single  place to find all ur favourite books";
		Mailer.send("from","pass","to","Online Book Store",s);
		System.out.println("Successful in Main Class");
		
	}
	

}
