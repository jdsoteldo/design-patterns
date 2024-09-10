require "furniture/base"
require "furniture/regular/chair"
require "furniture/regular/table"
require "furniture/regular/bench"

module Furniture
  module Regular
     class Factory < Furniture::Base
       def create_chair = Furniture::Regular::Chair.new
       def create_table = Furniture::Regular::Table.new
       def create_bench = Furniture::Regular::Bench.new
     end
  end
end