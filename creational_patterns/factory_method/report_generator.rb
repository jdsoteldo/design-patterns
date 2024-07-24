require_relative 'formatter'

class ReportGenerator
  def self.generate(data, type)
    Formatter.for(type).format(data)
  end
end

report_data = { foo_key: "foo", bar_key: "bar", baz_key: "baz" }
json_data = ReportGenerator.generate("report_data", 'json')
json_data = ReportGenerator.generate("report_data", Array)


p json_data

# 1 goes into formatter main class
# 2 picks a type
# 3 type access the formatter class we need
# 4 call the format method on the formatter class