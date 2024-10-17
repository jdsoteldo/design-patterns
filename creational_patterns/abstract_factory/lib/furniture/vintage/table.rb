require "furniture/products/table"

module Furniture
  module Vintage
    class Table < Furniture::Products::Table
      def material = "wood"
      def leg_count = 4
    end
  end
end