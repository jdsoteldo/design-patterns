class Delivery
  attr_accessor :vehicle_type, :delivery_speed, :additional_services

  def initialize(builder)
    @vehicle_type = builder.vehicle_type
    @delivery_speed = builder.delivery_speed
    @additional_services = builder.additional_services
  end

  def summary
    puts "Delivery Type: #{@vehicle_type}, Speed: #{@delivery_speed}, Services: #{@additional_services.join(', ')}"
  end
end
