# Bad example for Dependency Injection
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
  
  # define a class for a car printer
  class CarPrinter
    # define an initialize method to set the starting values for the car printer's attributes
    def initialize
      # create an instance of the Car class and store it as an instance variable
      @car = Car.new("Ford", "Mustang", 1968)
    end
  
    # define a method to print the make, model, and year of the car
    def print_car
      puts @car.get_make
      puts @car.get_model
      puts @car.get_year
    end
  end
  
  # create an instance of the CarPrinter class
  my_car_printer = CarPrinter.new
  
  # use the CarPrinter object to print the make, model, and year of the car
  my_car_printer.print_car

  
#   In this code, the CarPrinter class depends on the Car class to provide the information that it needs to print. However, the CarPrinter class creates its own instance of the Car class and hardcodes the make, model, and year of the car. This means that the CarPrinter class is tightly coupled to the Car class, and cannot work with any other type of vehicle. If the make, model, or year of the car needs to be changed, the code must be modified in multiple places, which is error-prone and difficult to maintain.

# Here is a better example of using the Dependency Injection principle:

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

# define a class for a car printer
class CarPrinter
    # define an initialize method to set the starting values for the car printer's attributes
    def initialize(car)
      # store the car object that is passed as an argument as an instance variable
      @car = car
    end
  
    # define a method to print the make, model, and year of the car
    def print_car
      puts @car.get_make
      puts @car.get_model
      puts @car.get_year
    end
  end
  
  # create an instance of the Car class
  my_car = Car.new("Ford", "Mustang", 1968)
  
  # create an instance of the CarPrinter class and pass the my_car object as an argument
  my_car_printer = CarPrinter.new(my_car)
  
  # use the CarPrinter object to print the make, model, and year of the car
  my_car_printer.print_car

#   In this code, the CarPrinter class depends on the Car class to provide the information that it needs to print. However, instead of creating its own instance of the Car class, the CarPrinter class accepts a Car object as an argument to its initialize method. This allows the CarPrinter class to be more flexible and reusable, because it can work with any object that has the same characteristics and behavior as a Car object.

# For example, if we want to print the make, model, and year of a different car, we can create a new Car object with the different make, model, and year, and pass it to the CarPrinter class. This avoids the need to modify the CarPrinter class to support different cars, and makes the code easier to maintain and test.

# The benefits of using the Dependency Injection principle in this code are:

# The CarPrinter class is more flexible and reusable, because it can work with any object that has the same characteristics and behavior as a Car object.
# The CarPrinter class is less tightly coupled to the Car class, because it does not create its own instance of the Car class, but accepts a Car object as an argument.
# The CarPrinter class is easier to maintain and test, because it does not hardcode the make, model, and year of the car, but uses the Car object that is passed to it as an argument.
# The code is easier to extend and modify, because it is not necessary to modify the CarPrinter class to support different cars, but only to create new Car objects with the different make, model, and year.