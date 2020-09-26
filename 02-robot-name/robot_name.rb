class Robot
  attr_reader :name

  def initialize
    # the name is two letters followed by 3 numbers
    @name = generate_name
  end

  def generate_name
    letters = [('A'..'Z')].map {|letter| letter.to_a}.flatten
    numbers = [(0..9)].map {|num| num.to_a}.flatten
    name_array = letters.shuffle.first(2) + numbers.shuffle.first(3)
    name = name_array.join
    return name
  end

  def reset
    @name = generate_name
  end
end

