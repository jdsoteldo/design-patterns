require_relative 'formatter'

class ArrayFormatter
  def format(data)
    data.to_a.flatten!
  end
end