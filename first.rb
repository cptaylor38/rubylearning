@@class_variable = "available from the class definition and any sub classes. Not available from anywhere outside."
@intance_variable = "available only within a specific object, across all methods in a class instance. Not directly available from class definitions."

$global_variable = "Available everywhere within your ruby script."

local_variable = "depends on scope."

def some_var; 'I am a method'; end
public :some_var # Because all methods defined at the top level are private by default
some_var = 'I am a variable'
p some_var # I am a variable
p some_var() # I am a method
p self.some_var # I am a method

class Vehicle
    @@no_of_wheels = 4
    @@horsepower = 27
    @@type_of_tank = 'gasoline'
    @@capacity = 6

    def initialize(wheels, horsepower, tank, cap)
        @no_of_wheels = wheels
        @horsepower = horsepower
        @type_of_tank = tank
        @capacity = cap
    end

    def display
        #how to iterate and display properties?
    end
end

sedan = Vehicle.new(4, 27, "gasoline", 5)
motorcycle = Vehicle.new(2, 14, "gasoline", 2)

puts sedan.display
puts motorcycle.display
