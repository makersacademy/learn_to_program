def roman_to_integer roman

  numerals_hash = { "M"=>1000,
                    "D"=>500,
                    "C"=>100,
                    "L"=>50,
                    "X"=>10,
                    "V"=>5,
                    "I"=>1}

  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    c = roman[index].upcase
    index -= 1
    val = numerals_hash[c]

puts "Not a valid numeral" if !val

    if val < prev
      val *= -1
    else
      prev = val
    end

  total = total + val

end

total

end
