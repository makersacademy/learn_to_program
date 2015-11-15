def roman_to_integer roman

  roman_mapping = {
      1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
      50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
                  }

  result = 0
  "Roman numeral not valid" if roman.empty?

  roman_mapping.values.each do |value|
    if roman.start_with?(value)
      result += roman_mapping.invert[value]
      roman = roman.slice(value.length, roman.length)
      roman_to_integer(roman, result)
    end
  end
end
