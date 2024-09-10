require "furniture/base"
require "furniture/modern/chair"
require "furniture/modern/table"
require "furniture/modern/bench"

module Furniture
  module Modern
     class Factory < Furniture::Base
       def create_chair = Furniture::Modern::Chair.new
       def create_table = Furniture::Modern::Table.new
       def create_bench = Furniture::Modern::Bench.new
     end
  end
end