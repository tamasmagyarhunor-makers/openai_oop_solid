# Here is an example of the Open/Closed Principle in Ruby using the Car class from the previous examples:
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
  
  # define a class for a sports car that inherits from the Car class
  class SportsCar < Car
    # define an initialize method to set the starting values for the sports car's attributes
    def initialize(make, model, year, horsepower)
      # call the initialize method of the parent class to set the make, model, and year attributes
      super(make, model, year)
      @horsepower = horsepower
    end
  
    # define a method to retrieve the sports car's horsepower
    def get_horsepower
      @horsepower
    end
  end
  
  # create an instance of the SportsCar class
  my_car = SportsCar.new("Ford", "Mustang", 1968, 400)
  
  # print the make, model, year, and horsepower of the car
  puts my_car.get_make
  puts my_car.get_model
  puts my_car.get_year
  puts my_car.get_horsepower

#   In this code, the Car class is open for extension, because it allows subclasses, such as the SportsCar class, to add new attributes and behavior to the car. The SportsCar class adds a horsepower attribute and a get_horsepower method, which are specific to sports cars. This allows the SportsCar class to extend the functionality of the Car class without modifying its existing behavior.

# At the same time, the Car class is closed for modification, because its existing behavior cannot be changed once it has been implemented. This means that the SportsCar class cannot modify the get_make, get_model, or get_year methods of the Car class, and must use them as they are defined. This protects the existing behavior of the Car class from being changed or broken by subclasses.

# In real life, the Open/Closed Principle is used in many different contexts to improve the extensibility