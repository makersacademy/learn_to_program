def roman_to_integer roman
  unless roman.is_a? String
    return "Please enter a valid Roman numeral"
  end

  roman.upcase!

  numerals = {
    1    => "I",
    4    => "IV",
    5    => "V",
    9    => "IX",
    10   => "X",
    40   => "XL",
    50   => "L",
    90   => "XC",
    100  => "C",
    400  => "CD",
    500  => "D",
    900  => "CM",
    1000 => "M"
  }

  result = 0
  numerals.reverse_each do |num, rom|
    while roman.index(rom) == 0
      result += num
      roman.slice!(rom)
    end
  end

  if roman != ''
    return "Please enter a valid Roman numeral"
  else
    result
  end
end

puts roman_to_integer("miiix")
puts roman_to_integer(0)
