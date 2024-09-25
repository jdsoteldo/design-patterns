require_relative 'delivery_builder'
require_relative 'delivery'


standard_builder = StandardDeliveryBuilder.new
standard_builder.add_additional_service("Express Handling")
standard_delivery = standard_builder.get_delivery
standard_delivery.summary

express_builder = ExpressDeliveryBuilder.new
express_builder.add_additional_service("Extra insurance")
express_builder.require_signature(true)
express_delivery = express_builder.get_delivery
express_delivery.summary

# the delivery builders initializes the relevant delivery builder and sets the delivery data

# +---------------------+     +---------------------+     +---------------+
# | main.rb             |     | delivery_builder.rb |     | delivery.rb   |
# +---------------------+     +---------------------+     +---------------+
# |                     |     |                     |     |               |
# | - Creates builders  |     | - Defines builders  |     | - Defines     |
# | - Sets delivery data|     | - Sets delivery data|     |   Delivery    |
# | - Gets deliveries   |---->| - Creates Delivery  |---->| - Prints      |
# | - Prints summaries  |     |                     |     |   summary     |
# |                     |     |                     |     |               |
# +---------------------+     +---------------------+     +---------------+