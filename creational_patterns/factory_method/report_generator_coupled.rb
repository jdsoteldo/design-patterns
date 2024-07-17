require 'json'

class ReportGenerator
  def self.generate(data, type)
    return "" if (data.empty? || !['csv', 'json'].include?(type))

    if type == 'csv'
      result = data.keys.join(",") + "\n"
      result += data.values.join(",") + "\n"      
    elsif type == 'json'
      result = data.to_json
    end

    result
  end
end

report_data = { foo_key: "foo", bar_key: "bar", baz_key: "baz" }

json_data = ReportGenerator.generate(report_data, 'json')
csv_data = ReportGenerator.generate(report_data, 'csv') 

p json_data
p csv_data
