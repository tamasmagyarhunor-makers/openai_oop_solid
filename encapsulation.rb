# Polymorphism is a concept in computer programming that refers to the ability of different objects or classes to be treated as if they were the same type. This allows objects of different types to be used interchangeably in a program, without the need to explicitly convert between types.

# Here is an example of polymorphism in Ruby using the Car class from the previous example:
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
  
  # define a class for a truck
  class Truck
    # define an initialize method to set the starting values for the truck's attributes
    def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
    end
  
    # define methods to retrieve the truck's make, model, and year
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
  
  # create an array to hold the cars and trucks
  vehicles = []
  
  # add a car and a truck to the array
  vehicles.push(Car.new("Ford", "Mustang", 1968))
  vehicles.push(Truck.new("Ford", "F-150", 2018))
  
  # loop through the array and print the make, model, and year of each vehicle
  vehicles.each do |vehicle|
    puts vehicle.get_make
    puts vehicle.get_model
    puts vehicle.get_year
  end

#   In this code, the Car and Truck classes are both subclasses of the Object class, which means that they share some common characteristics. In particular, both classes have get_make, get_model, and get_year methods that can be called on objects of either class. This allows us to treat cars and trucks as if they were the same type, and store them in the same array. When we loop through the array and print the make, model, and year of each vehicle, the code doesn't need to know or care whether the vehicle is a car or a truck. It simply calls the same methods on each object, and they work correctly because both classes have the same methods.

# In real life, polymorphism is used in many different contexts to make it easier to work with objects of different types. For example, in a banking system, a customer may have different types of accounts, such as checking, savings, and investment accounts. Each account type may have its own unique features, but they all share some common characteristics, such as a balance and a history of transactions. The bank's code can treat these accounts as if they were the same type, and use the same methods to perform common operations, such as depositing money or checking the balance. This allows the code to work with different account types interchangeably, without the need to write separate code for each account type.