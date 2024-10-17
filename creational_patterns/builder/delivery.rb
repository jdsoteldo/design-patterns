class Delivery
  def initialize(builder)
    @vehicle_type = builder.vehicle_type
    @delivery_speed = builder.delivery_speed
    @additional_services = builder.additional_services
    @signature_required = builder.signature_required 
  end

  def summary
    puts "Delivery Type: #{@vehicle_type}, Speed: #{@delivery_speed}, Services: #{@additional_services.join(', ')}, Signature Required: #{@signature_required}"
  end
end
