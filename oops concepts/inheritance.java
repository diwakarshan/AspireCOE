class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String introduce() {
        return "Hi, my name is " + name + " and I'm " + age + " years old.";
    }

    public String getName() {
        return name;
    }
}

class Student extends Person {
    private String studentId;

    public Student(String name, int age, String studentId) {
        super(name, age);
        this.studentId = studentId;
    }

    public String study() {
        return getName() + " is studying.";
    }
}

class Teacher extends Person {
    private String subject;

    public Teacher(String name, int age, String subject) {
        super(name, age);
        this.subject = subject;
    }

    public String teach() {
        return getName() + " is teaching " + subject + ".";
    }
}

public class inheritance {
    public static void main(String[] args) {
        Student student1 = new Student("Alice", 20, "S123");
        System.out.println(student1.introduce()); // Output: Hi, my name is Alice and I'm 20 years old.
        System.out.println(student1.study());     // Output: Alice is studying.

        Teacher teacher1 = new Teacher("Bob", 35, "Math");
        System.out.println(teacher1.introduce()); // Output: Hi, my name is Bob and I'm 35 years old.
        System.out.println(teacher1.teach());     // Output: Bob is teaching Math.
    }
}
