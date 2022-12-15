# Encapsulation is a concept in object-oriented programming that refers to the process of binding together the data and behavior of an object, and hiding the implementation details from the outside world. This allows objects to control how their data and behavior are accessed and modified, and prevents external code from directly manipulating the internal state of the object.

# Here is an example of encapsulation in Ruby using the Car class from the previous examples:

# define a class for a car
class Car
    # define an initialize method to set the starting values for the car's attributes
    def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
    end
  
    # define methods to retrieve and set the car's make, model, and year
    def make
      @make
    end
  
    def model
      @model
    end
  
    def year
      @year
    end
  
    def make=(make)
      @make = make
    end
  
    def model=(model)
      @model = model
    end
  
    def year=(year)
      @year = year
    end
  end
  
  # create an instance of the Car class
  my_car = Car.new("Ford", "Mustang", 1968)
  
  # print the make, model, and year of the car
  puts my_car.make
  puts my_car.model
  puts my_car.year
  
  # change the make, model, and year of the car
  my_car.make = "Chevrolet"
  my_car.model = "Camaro"
  my_car.year = 1969
  
  # print the make, model, and year of the car again
  puts my_car.make
  puts my_car.model
  puts my_car.year

  
#   In this code, the Car class defines methods for retrieving and setting the make, model, and year attributes of a car object. These methods allow external code to access and modify the values of these attributes, but they do not allow external code to directly manipulate the values of the @make, @model, and @year instance variables. This protects the internal state of the car object from being changed by external code in unintended ways.

#     In real life, encapsulation is used in many different contexts to protect the integrity of objects and systems. For example, when you use a credit card, you don't need to know how the card's internal hardware and software work to make a payment. You simply use the card's interface, which allows you to enter your PIN and authorize a transaction without exposing the card's internal workings. Similarly, when you use a web application, you don't need to know how the application's code works in order to use it. The application's user interface provides an encapsulated way to interact with the code, without allowing you to directly manipulate the internal state of the application. Encapsulation allows objects and systems to control how their data and behavior are accessed and modified, and to protect their internal state from being corrupted by external forces.