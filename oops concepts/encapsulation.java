class Student {
    private String name;
    private int age;

    // Getter method for name
    public String getName() {
        return name;
    }

    // Setter method for name
    public void setName(String name) {
        this.name = name;
    }

    // Getter method for age
    public int getAge() {
        return age;
    }

    // Setter method for age
    public void setAge(int age) {
        if (age > 0) {
            this.age = age;
        } else {
            System.out.println("Age cannot be negative.");
        }
    }
}

public class encapsulation {
    public static void main(String[] args) {
        
        Student student = new Student();

        student.setName("Alice");
        student.setAge(20);

        System.out.println("Name: " + student.getName()); // Output: Name: Alice
        System.out.println("Age: " + student.getAge());   // Output: Age: 20

        student.setAge(-5); // Output: Age cannot be negative.
    }
}
