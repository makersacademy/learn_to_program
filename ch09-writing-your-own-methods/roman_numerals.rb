def roman_numeral num
  array = num.to_s.chars.map(&:to_i)
  a_length = array.length
    if a_length == 1
      array[0] < 5 ? "I" * array[0] : (array[0] == 9 ? "IX" : "V" + "I"  * (array[0] - 5))
    end
end

puts (roman_numeral 8)
puts (roman_numeral 9)