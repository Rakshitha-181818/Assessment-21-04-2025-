package java_assessment;

import java.util.Scanner;
public class PalindromeNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter the number: ");
        int number = scanner.nextInt();

        int num1 = number;
        int reverse = 0;

        
        while (number!= 0) {
            int digit = number % 10;
            reverse = reverse * 10 + digit;
            number = number / 10;
        }

       if (num1 == reverse) {
            System.out.println(num1 + " is palindrome.");
        } else {
            System.out.println(num1 + " is not  palindrome.");
        }
	}

}
