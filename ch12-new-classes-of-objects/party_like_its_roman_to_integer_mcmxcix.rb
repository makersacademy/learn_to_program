def roman_to_integer(roman)
  roman_digits = {'i' => 1,
                  'v' => 5,
                  'x' => 10,
                  'l' => 50,
                  'c' => 100,
                  'd' => 500,
                  'm' => 1000}

  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    key = roman[index].downcase
    index = index - 1
    value = roman_digits[key]

    if !value
      throw "#{roman} is not a valid roman number."
    elsif value < prev
      value = value * -1
    else
      prev = value
    end
    total = total + value
  end
  total
end

=begin
puts "Please enter a roman number:"
roman = gets.chomp

puts roman_to_integer(roman)
=end
