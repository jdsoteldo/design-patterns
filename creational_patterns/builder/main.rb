require_relative 'delivery_builder'
require_relative 'delivery'


standard_builder = StandardDeliveryBuilder.new
standard_builder.add_additional_service(["Express Handling", "Call before"])
standard_delivery = standard_builder.get_delivery
standard_delivery.summary

express_builder = ExpressDeliveryBuilder.new
express_builder.add_additional_service("Extra insurance")
express_builder.set_vehicle_type("very fast airplane")
express_builder.set_photo_proof_needed(true)
express_delivery = express_builder.get_delivery
express_delivery.summary

drone_builder = DroneDeliveryBuilder.new
drone_builder.add_additional_service("video footage of delivery")
drone_builder.set_delivery_speed("pigieon speed")
drone_delivery = drone_builder.get_delivery
drone_delivery.summary


# the delivery builders initializes the relevant delivery builder and sets the delivery data

# +-----------------------+     +---------------------+     +---------------+
# | main.rb               |     | delivery_builder.rb |     | delivery.rb   |
# +-----------------------+     +---------------------+     +---------------+
# |                       |     |                     |     |               |
# | - Initialize builders |     | - Defines builders  |     | - Defines     |
# | - Sets delivery data  |     | - Sets delivery data|     |   Delivery    |
# | - Gets deliveries     |---->| - Creates Delivery  |---->| - Prints      |
# | - Prints summaries    |     |                     |     |   summary     |
# |                       |     |                     |     |               |
# +-----------------------+     +---------------------+     +---------------+