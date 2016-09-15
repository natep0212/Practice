import java.util.Scanner;

public class BMRCalculator {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner keyboard = new Scanner(System.in);

		//Initialize variable to 0
		double BMR = 0;

		//Getting user input
		System.out.println("Welcome to the BMR calculator!");

		System.out.println("First are you male or female? Enter M or F: ");
		String gender = keyboard.nextLine();

		System.out.println("How tall are you in inches: ");
		double height = keyboard.nextDouble();

		System.out.println("What is your weight in pounds: ");
		double weight = keyboard.nextDouble();

		System.out.println("What is your age in years: ");
		int age = keyboard.nextInt();

		//Checking if male or female and getting the BMR before lifestlye choice
		if(gender == "F")
		{
			BMR = 655 + (4.3 * weight) + (4.7 * height) - (4.7 * age);
		}
		else
		{
			BMR = 66 + (6.3 * weight) + (12.9 * height) - (6.8 * age);
		}

		//Gets user info about lifestyle for next calculation
		System.out.println("How would you describe your lifestyle?"
				+ "\nSedentary, Somewhat Active, Active, Highly Active?");
		String lifestyle = keyboard.nextLine();

		//Given values to multiply by in order to check the users lifestlye
		if(lifestyle == "Sedentary")
		{
			BMR = BMR * .2;
		}
		else if(lifestyle == "Somewhat Active")
		{
			BMR = BMR * .3;
		}
		else if(lifestyle == "Active")
		{
			BMR = BMR * .4;
		}
		else if(lifestyle == "HighlyActive")
		{
			BMR = BMR * .5;
		}

		System.out.println("Your BMR is " + BMR + " calories!");

	}
}
