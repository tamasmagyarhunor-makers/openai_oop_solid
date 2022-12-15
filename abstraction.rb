# Abstraction is a concept in computer programming that refers to the process of exposing only the essential features of an object or system, while hiding the implementation details. This allows users to interact with the object or system without needing to know how it works internally.

# Here is an example of abstraction in Ruby:

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

# create an instance of the Car class
my_car = Car.new("Ford", "Mustang", 1968)

# print the make, model, and year of the car
puts my_car.get_make
puts my_car.get_model
puts my_car.get_year

# In this code, the Car class is an abstraction of a real-life car. The initialize method allows users to create a new car object with specific make, model, and year attributes. The get_make, get_model, and get_year methods then allow users to retrieve the values of these attributes without needing to know how they are stored internally.

# In real life, abstraction is used in many different contexts to make complex systems easier to understand and use. For example, when you use a smartphone, you don't need to know how the phone's hardware and software work together to make calls, send messages, or use apps. You simply use the phone's interface, which is an abstraction of the underlying technology. Similarly, when you use a website, you don't need to know how the website's code works in order to navigate and interact with it. The website's user interface is an abstraction of the underlying code. Abstraction allows users to focus on the essential features of a system and use it effectively without needing to understand its inner workings.