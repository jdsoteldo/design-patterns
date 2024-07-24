$:.unshift(__dir__) unless $:.include?(__dir__)

require "furniture/factory"

class Endpoint
  def self.category(params)
    category = params["category"].to_sym
    factory = Furniture::Factory.for(category)
    chair = factory.create_chair
    table = factory.create_table

    puts <<~TEXT
    Chair has #{chair.leg_count} legs and #{chair.cushion? ? '' : 'no'} cushion.
    Table is made of #{table.material}.
    TEXT
  end
end

params = { "category" => "modern" }
Endpoint.category(params)


# endpoint or interface goes into factory, 
# factory then initializes the objects and goes into product
# product then creates the methods like leg_count and cushion?