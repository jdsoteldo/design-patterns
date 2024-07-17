require_relative 'formatter'
require 'json'

class JsonFormatter
  def format(data)
    data.to_json unless data.empty?
  end
end