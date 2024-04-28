class Animal {
    public void makeSound() {
        System.out.println("Some generic sound");
    }
}

class Dog extends Animal {
    @Override
    public void makeSound() {
        System.out.println("Woof");
    }
}

class Cat extends Animal {
    @Override
    public void makeSound() {
        System.out.println("Meow");
    }
}

public class polymorphism {
    public static void main(String[] args) {
        Animal animalDog = new Dog();
        Animal animalCat = new Cat();

        animalDog.makeSound(); // Output: Woof
        animalCat.makeSound(); // Output: Meow
    }
}
