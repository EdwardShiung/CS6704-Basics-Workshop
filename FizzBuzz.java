import java.util.ArrayList;
import java.util.List;

public class FizzBuzz {
	public static List<String> fizzBuzz(int n)
	{
		// Declare a list of strings to store the results
		List<String> result = new ArrayList<>();

		// Loop from 1 to n (inclusive)
		for (int i = 1; i <= n; ++i) {

			// Check if i is divisible by both 3 and 5
			if (i % 3 == 0 && i % 5 == 0) {
				result.add("FizzBuzz");
			}
			else if (i % 3 == 0) {
				result.add("Fizz");
			}

			// Check if i is divisible by 5
			else if (i % 5 == 0) {

				// Add "Buzz" to the result list
				result.add("Buzz");
			}
			else {

				// Add the current number as a string to the
				// result list
				result.add(Integer.toString(i));
			}
		}
		// Return the result list
		return result;
	}
}
