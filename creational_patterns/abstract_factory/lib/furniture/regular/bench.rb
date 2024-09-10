require "furniture/products/bench"

module Furniture
  module Regular
    class Bench < Furniture::Products::Bench
      def material = "metal"
    end
  end
end