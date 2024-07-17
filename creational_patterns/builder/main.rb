require_relative 'delivery_builder'
require_relative 'delivery_director'
require_relative 'delivery'


standard_builder = StandardDeliveryBuilder.new
director = DeliveryDirector.new
standard_builder.vehicle_type="Van"
standard_builder.add_additional_service("Express Handling")
standard_delivery = director.build_delivery(standard_builder)
standard_delivery.summary

# express_builder = ExpressDeliveryBuilder.neww(delivery_speed = "super quick")
express_builder = ExpressDeliveryBuilder.new
express_builder.add_additional_service("Extra insurance")
express_delivery = director.build_delivery(express_builder)
express_delivery.summary

