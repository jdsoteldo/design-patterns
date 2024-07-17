## Factory Method Pattern
This is a creational design pattern that provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created. This type of pattern may be a great solution for an app that has grown very big within a specific subclass, as a result, creating a lot of coupling within a specific subclass. 

### Key Benefits

- Flexibility: Provides a way to create different types of objects without tightly coupling the creation logic to the specific classes. It also provides a way to create objects without specifying their concrete classes directly,
- Maintainability: Encapsulates the object creation process, making it easier to modify or extend the system in the future.
- Consistency: Ensures a uniform way of creating objects across the application.

### Imagine this:

Your logistics company started by only delivering goods by truck.  Your app's code focused heavily on the Truck class, containing all the details about how trucks work (loading, routes, delivery times, etc.).

Now, your company is expanding! You're adding ships to your fleet.  But, you realize that trucks and ships share some similarities:

Both carry cargo: They both need to know what they're carrying and how much.
Both have routes: They both need to follow a path to get the cargo to its destination.
Both have schedules: They both have estimated delivery times.
The Factory Method to the Rescue

Instead of creating a whole new set of code for ships, you can use the Factory Method pattern:

Create a "Vehicle" Blueprint: This is like a general template for all your vehicles. It includes the basic things that both trucks and ships have in common (cargo, routes, schedules).
Specialize the Blueprints: You create two separate blueprints: one for trucks and one for ships. These blueprints build upon the general "Vehicle" blueprint, adding specific details for each type (e.g., trucks have wheels, ships have a captain).
The "Logistics Coordinator": This is like the factory method. When you need a vehicle, you tell the logistics coordinator what type you want (truck or ship). They then take care of creating the correct type of vehicle object for you, based on the appropriate blueprint.
Benefits:

No More Repetition: You don't have to write the same code twice for trucks and ships. The shared logic is in the "Vehicle" blueprint.
Easy to Adapt: If you add airplanes later, you just create a new "Airplane" blueprint and tell the logistics coordinator to use it.
Organized Code: All the logic for creating different vehicles is in one place (the logistics coordinator), making your code easier to manage.
Example:

Instead of dealing with the complexities of creating each vehicle type (truck or ship), you would simply call a function (the "logistics coordinator") and tell it what type of vehicle you need. It would then return a fully prepared vehicle object ready for use.


### Code
```
# Base Class
class Vehicle
  attr_accessor :cargo, :route, :schedule

  def initialize(cargo, route, schedule)
    @cargo = cargo
    @route = route
    @schedule = schedule
  end

  def deliver
    puts "Delivering #{cargo} along #{route} according to schedule #{schedule}"
  end
end

# Truck (Subclass)
class Truck < Vehicle
  attr_accessor :license_plate

  def initialize(cargo, route, schedule, license_plate)
    super(cargo, route, schedule)
    @license_plate = license_plate
    @seats = seats
  end
end

# Ship (Subclass)
class Ship < Vehicle
  attr_accessor :captain_name

  def initialize(cargo, route, schedule, captain_name)
    super(cargo, route, schedule)
    @captain_name = captain_name
  end
end

# Car (Subclass)
class Car < Vehicle
  attr_accessor :clowns

  def initialize(cargo, route, schedule, captain_name)
    super(cargo, route, schedule)
    @clowns = clowns
  end
end

# LogisticsCoordinator (Factory)
class LogisticsCoordinator || Handler || Adapter
  def self.create_vehicle(type, cargo, route, schedule, extra_info = nil)
    case type
    when :truck
      Truck.new(cargo, route, schedule, license_plate)
    when :ship
      Ship.new(cargo, route, schedule, captain_name)
    when :car
      Car.new(cargo, route, schedule, extra_info)
    else
      raise ArgumentError, "Invalid vehicle type: #{type}"
    end
  end
end


Class DeliverySchedule
  LogisticsCoordinator.create_vehicle("car", every params)
end
```