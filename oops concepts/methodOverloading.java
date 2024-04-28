class MathOperations {
 
    public int add(int a, int b) {
        return a + b;
    }

   
    public int add(int a, int b, int c) {
        return a + b + c;
    }

   
    public double add(double a, double b) {
        return a + b;
    }


    public String add(String a, String b) {
        return a + b;
    }
}

public class methodOverloading {
    public static void main(String[] args) {
        MathOperations math = new MathOperations();

        // Overloaded methods being called
        System.out.println("Sum of 5 and 10: " + math.add(5, 10)); 
        System.out.println("Sum of 5, 10, and 15: " + math.add(5, 10, 15)); 
        System.out.println("Sum of 5.5 and 10.5: " + math.add(5.5, 10.5)); 
        System.out.println("Concatenation of \"Hello\" and \"World\": " + math.add("Hello", "World")); 
    }
}
