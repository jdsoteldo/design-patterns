require "furniture/base"
require "furniture/vintage/chair"
require "furniture/vintage/table"
require "furniture/vintage/bench"

module Furniture
  module Vintage
     class Factory < Furniture::Base
       def create_chair = Furniture::Vintage::Chair.new
       def create_table = Furniture::Vintage::Table.new
       def create_bench = Furniture::Vintage::Bench.new
     end
  end
end