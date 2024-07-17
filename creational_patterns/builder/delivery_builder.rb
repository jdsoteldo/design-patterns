# Builder Interface
class DeliveryBuilder
  attr_accessor :vehicle_type, :delivery_speed, :additional_services

  def initialize(vehicle_type = "Truck", delivery_speed = "Standard")
    @vehicle_type = vehicle_type
    @delivery_speed = delivery_speed
    @additional_services = []
  end

  def add_additional_service(service)
    @additional_services << service
  end

  def get_delivery
    Delivery.new(self) # Pass the builder itself to the Delivery object
  end
end

# Concrete Builders
class StandardDeliveryBuilder < DeliveryBuilder
end


class ExpressDeliveryBuilder < DeliveryBuilder
  def initialize(vehicle_type = "Airplane", delivery_speed = "Express")
    super
    @vehicle_type = vehicle_type 
    @delivery_speed = delivery_speed 
  end

  def set_vehicle_type(type)
    @vehicle_type = type
  end

  def set_delivery_speed(speed)
    @delivery_speed = speed
  end
end
