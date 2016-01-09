class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end

    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    num = self
    return "" if num == 0
    roman_nums = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1}

    letter,step = roman_nums.select{|key,value| value<=num}.first
    integer = (num - (num/step * step))
    letter * (num/step) + (integer).to_roman
  end
end

class Array
  def shuffle(shuffled_array=[])
      array = self
      return shuffled_array if array == []
      number = Random.new
      shuffled_array << array.delete_at(number.rand(array.length))
      shuffle(shuffled_array)
  end
end






