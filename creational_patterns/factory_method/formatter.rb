require_relative 'json_formatter'
require_relative 'csv_formatter'
require_relative 'array_formatter'

class Formatter
  def self.for(type)
    case type
    when 'csv'
      CsvFormatter.new
    when 'json'
      JsonFormatter.new
    when Array
      ArrayFormatter.new
    else
      raise 'Unsupported type of report'
    end
  end
end
