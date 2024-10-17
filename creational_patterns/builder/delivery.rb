class Delivery
  def initialize(builder)
    @vehicle_type = builder.vehicle_type
    @delivery_speed = builder.delivery_speed
    @additional_services = builder.additional_services
    @signature_required = builder.signature_required
    @photo_proof_needed = builder.photo_proof_needed
  end

  def summary
    puts "Photo proof needed: #{@photo_proof_needed}, Delivery Type: #{@vehicle_type}, Speed: #{@delivery_speed}, Services: #{@additional_services.join(', ')}, Signature Required: #{@signature_required}"
  end
end
