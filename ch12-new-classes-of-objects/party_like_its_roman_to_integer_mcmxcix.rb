
def roman_to_integer roman
  roman_to_integer_helper( roman.upcase, 0 )
end

def roman_to_integer_helper( roman, result)
  if roman.empty?
    return result
  end

  integer_to_roman.values.each do |val|
    if roman.start_with?(val)
      result += integer_to_roman.invert[val]
      roman = roman.slice(val.length, roman.length)
      return roman_to_integer_helper( roman, result)
    end
  end
end

def integer_to_roman
  {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
end

