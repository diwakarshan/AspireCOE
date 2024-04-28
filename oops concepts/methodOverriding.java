class Vehicle {
    public void start() {
        System.out.println("Vehicle starting...");
    }

    public void stop() {
        System.out.println("Vehicle stopping...");
    }
}

class Car extends Vehicle {
    @Override
    public void start() {
        System.out.println("Car starting...");
    }

    @Override
    public void stop() {
        System.out.println("Car stopping...");
    }
}

class Bike extends Vehicle {
    @Override
    public void start() {
        System.out.println("Bike starting...");
    }

    @Override
    public void stop() {
        System.out.println("Bike stopping...");
    }
}

public class methodOverriding {
    public static void main(String[] args) {
        Vehicle car = new Car();
        Vehicle bike = new Bike();

       
        car.start(); 
        car.stop(); 
        
        bike.start(); 
        bike.stop(); 
    }
}
