# Here is an example of the Single Responsibility Principle in Ruby using the Car class from the previous examples:

# define a class for a car
class Car
    # define an initialize method to set the starting values for the car's attributes
    def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
    end
  
    # define methods to retrieve the car's make, model, and year
    def get_make
      @make
    end
  
    def get_model
      @model
    end
  
    def get_year
      @year
    end
  end
  
  # define a separate class for printing information about a car
  class CarPrinter
    # define a method to print the make, model, and year of a car
    def self.print_car(car)
      puts car.get_make
      puts car.get_model
      puts car.get_year
    end
  end
  
  # create an instance of the Car class
  my_car = Car.new("Ford", "Mustang", 1968)
  
  # use the CarPrinter class to print the make, model, and year of the car
  CarPrinter.print_car(my_car)

  
#   In this code, the Car class has only one responsibility: representing the characteristics of a car. It does not have the responsibility of printing the car's information. This responsibility is delegated to the CarPrinter class, which has a print_car method that takes a Car object as an argument and prints its make, model, and year. This separation of responsibilities allows the Car class to focus on its core functionality, and the CarPrinter class to focus on printing the car's information. This makes the code more modular, maintainable, and extensible, and allows each class to be changed or updated independently of the other.

# In real life, the Single Responsibility Principle is used in many different contexts to improve the design and maintainability of software systems. For example, in a social media application, a user class may have the responsibility of representing the characteristics of a user, such as their name, profile picture, and friends list. A separate class, such as a user printer class, may have the responsibility of printing the user's information in different formats, such as a list view or a grid view. This allows the user class to focus on its core functionality, and the user printer class to focus on its specific responsibility. This makes the code easier to understand, modify, and test, and reduces the risk of errors or unintended side effects.