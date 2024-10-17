require_relative 'delivery_builder'
require_relative 'delivery'


standard_builder = StandardDeliveryBuilder.new
standard_builder.add_additional_service(["Express Handling", "Call before"])
standard_delivery = standard_builder.get_delivery
standard_delivery.summary

express_builder = ExpressDeliveryBuilder.new
express_builder.add_additional_service("Extra insurance")
express_builder.set_vehicle_type("very fast airplane")
express_delivery = express_builder.get_delivery
express_delivery.summary

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