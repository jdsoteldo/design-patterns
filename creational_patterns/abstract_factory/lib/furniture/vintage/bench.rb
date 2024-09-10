require "furniture/products/bench"

module Furniture
  module Vintage
    class Bench < Furniture::Products::Bench
      def material = "wood"
    end
  end
end