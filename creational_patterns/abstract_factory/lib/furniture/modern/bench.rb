require "furniture/products/bench"

module Furniture
  module Modern
    class Bench < Furniture::Products::Bench
      def material = "glass"
    end
  end
end