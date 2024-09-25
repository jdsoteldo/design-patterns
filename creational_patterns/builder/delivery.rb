class Delivery
  def initialize(builder)
    @vehicle_type = builder.vehicle_type
    @delivery_speed = builder.delivery_speed
    @additional_services = builder.additional_services
    if builder.is_a?(ExpressDeliveryBuilder)
      @signature_required = builder.signature_required 
    end
  end

  def summary
    puts "Delivery Type: #{@vehicle_type}, Speed: #{@delivery_speed}, Services: #{@additional_services.join(', ')}"
    if @delivery_speed == "Express" && @signature_required
      puts "Signature Required: Yes"
    end
  end
end
