# Inheritance is a concept in object-oriented programming that refers to the ability of a class to inherit characteristics from another class. This allows a class to extend the functionality of another class without needing to redefine the common characteristics.

# Here is an example of inheritance in Ruby using the Car class from the previous examples:

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

  
#   In this code, the SportsCar class is a subclass of the Car class. This means that it inherits all of the characteristics of the Car class, such as the initialize and get_make, get_model, and get_year methods. The SportsCar class then defines its own initialize method and get_horsepower method, which provide additional functionality that is specific to sports cars. When we create an instance of the SportsCar class, it automatically has all of the attributes and methods of the Car class, as well as the additional horsepower attribute and method of the SportsCar class.

# In real life, inheritance is used in many different contexts to avoid redundant code and to make it easier to work with related objects. For example, in a hospital, there may be different types of medical professionals, such as doctors, nurses, and technicians. Each type of medical professional may have their own unique characteristics and responsibilities, but they all share some common characteristics, such as a name, a salary, and a job title. The hospital's code can use inheritance to define a base class for medical professionals, and then define subclasses for each type of medical professional. This allows the code to avoid repeating the common characteristics of medical professionals, and to easily work with different types of medical professionals interchangeably.