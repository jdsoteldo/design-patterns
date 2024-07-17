## Builder Pattern
This pattern separates the construction of a complex object from its representation, allowing the same construction process to create different representations. It's particularly useful when you need to create objects with numerous configuration options or when the construction process is complex and involves multiple steps.

### Key Benefits
- Flexibility: Construct different representations of an object using the same construction process.
- Readability: Improve code readability by encapsulating the construction logic within the builder.
- Maintainability: Isolate the construction code, making it easier to modify or extend in the future.

### Imagine this
Your logistics company is expanding its services to include custom delivery options. Customers can now choose various parameters for their delivery:

- Vehicle Type: Truck, van, motorcycle, etc.
- Delivery Speed: Standard, express, same-day.
- Additional Services: Insurance, tracking, special handling.

Creating these custom deliveries involves setting multiple options, and the combinations can vary widely.

Builder to the Rescue
Instead of having a complex constructor with many parameters, you use the Builder pattern, which indludes:

- Builder Interface: Define an interface (or abstract class) with methods for setting each option (e.g., set_vehicle_type, set_delivery_speed, add_additional_service).
- Concrete Builders: Create separate builders for different types of deliveries (e.g., TruckDeliveryBuilder, ExpressDeliveryBuilder). Each builder implements the interface and provides specific implementations for setting the options.
- Director: A director class orchestrates the building process. It uses a builder object to construct the final delivery object step by step.
- Product: This is the final custom delivery object, which is created by the director using the builder.

### Benefits
- Simplified Construction: Build complex delivery objects step-by-step with clear and concise code.
- Customization: Easily create different types of deliveries with varying configurations.
- Readability: The director's code clearly outlines the construction steps, making it easy to understand and maintain.

### Example 
Instead of calling a complex constructor with numerous parameters, you would create a builder object, set the desired options using its methods, and then pass the builder to the director. The director would use the builder to construct the final delivery object.

### Code
```
# Builder Interface (defines the methods for building the delivery)
class DeliveryBuilder
  def set_vehicle_type(type)
    @vehicle_type = type
    # Logic to configure vehicle type (e.g., create Truck, Van, Motorcycle object)
  end

  def set_delivery_speed(speed)
    @delivery_speed = speed
    # Logic to set delivery speed parameters (e.g., estimated time of arrival)
  end

  def add_additional_service(service)
    @additional_services ||= []
    @additional_services << service
    # Logic to add and configure additional services
  end

  def get_delivery
    # Logic to assemble and return the final Delivery object
    Delivery.new(@vehicle_type, @delivery_speed, @additional_services)
  end
end

# Concrete Builders (implement the interface for specific delivery types)
class StandardDeliveryBuilder < DeliveryBuilder
  def set_vehicle_type(type)
    super("Truck") # Default vehicle for standard delivery is a truck
  end

  def set_delivery_speed(speed)
    super("Standard") # Default speed is standard
  end
end

class ExpressDeliveryBuilder < DeliveryBuilder
  def set_vehicle_type(type)
    super("Airplane") # Default vehicle for express delivery is an airplane
  end

  def set_delivery_speed(speed)
    super("Express") # Default speed is express
  end
end

# Director (orchestrates the building process)
class DeliveryDirector
  def build_delivery(builder)
    builder.set_vehicle_type("...") # Optionally set vehicle type, if not using the default
    builder.set_delivery_speed("...") # Optionally set speed, if not using the default
    builder.add_additional_service("Insurance") # Example of adding an additional service
    builder.get_delivery
  end
end

# Product (the final delivery object)
class Delivery
  attr_accessor :vehicle_type, :delivery_speed, :additional_services

  def initialize(vehicle_type, delivery_speed, additional_services)
    @vehicle_type = vehicle_type
    @delivery_speed = delivery_speed
    @additional_services = additional_services
  end

  def summary
    puts "Delivery Type: #{@vehicle_type}, Speed: #{@delivery_speed}, Services: #{@additional_services.join(', ')}"
  end
end


# Usage
standard_builder = StandardDeliveryBuilder.new
director = DeliveryDirector.new
standard_delivery = director.build_delivery(standard_builder)
standard_delivery.summary

express_builder = ExpressDeliveryBuilder.new
express_delivery = director.build_delivery(express_builder)
express_delivery.add_additional_service("Tracking") # Customize express delivery
express_delivery.summary
```