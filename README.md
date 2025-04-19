# Paradigms of Programming

This course teaches **Object-Oriented Programming (OOP)** and the fundamentals of **Functional Programming**. 

## Course Overview

### Object-Oriented Programming (OOP) with Java
OOP uses classes and objects to model real-world entities and relationships. 

#### Key Concepts:
- **Classes & Objects**: Defining classes and creating objects.
- **Encapsulation**: Hiding internal states.
- **Inheritance & Polymorphism**: Extending classes and using multiple implementations.
- **Design Patterns**: Singleton, Factory, Observer.

#### Example (Java):
```java
public class Car {
    private String make;
    private String model;

    public Car(String make, String model) {
        this.make = make;
        this.model = model;
    }

    public void startEngine() {
        System.out.println("The engine of the " + make + " " + model + " is now running.");
    }

    public static void main(String[] args) {
        Car myCar = new Car("Toyota", "Corolla");
        myCar.startEngine();
    }
}
```
### Functional Programming with Haskell

Functional programming focuses on writing pure functions and avoids mutable state. 

#### Key Concepts:
- **Pure Functions**: No side effects.
- **First-Class Functions**: Functions as arguments/returns.
- **Recursion & Immutability**: Common functional techniques.

#### Example (Haskell):
```haskell
multiply :: Int -> Int -> Int
multiply x y = x * y

applyFunction :: (Int -> Int -> Int) -> Int -> Int -> Int
applyFunction func a b = func a b

main :: IO ()
main = do
    let result = applyFunction multiply 5 3
    print ("Result: " ++ show result)
```



