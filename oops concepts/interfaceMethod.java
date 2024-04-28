
interface Vehicle {
    void start(); // Method to start the vehicle
    void stop();  // Method to stop the vehicle
}


class Car implements Vehicle {
    @Override
    public void start() {
        System.out.println("Car started.");
    }

    @Override
    public void stop() {
        System.out.println("Car stopped.");
    }
}

// Bike class implementing the Vehicle interface
class Bike implements Vehicle {
    @Override
    public void start() {
        System.out.println("Bike started.");
    }

    @Override
    public void stop() {
        System.out.println("Bike stopped.");
    }
}

public class interfaceMethod {
    public static void main(String[] args) {
       
        Car car = new Car();
        Bike bike = new Bike();

        
        car.start(); // Output: Car started.
        car.stop();  // Output: Car stopped.

        bike.start(); // Output: Bike started.
        bike.stop();  // Output: Bike stopped.
    }
}
