def old_roman_numeral num

  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  values = [1000, 500, 100, 50, 10, 5, 1]
  output = ""

  values.each_with_index do |v, i|
    output << "#{numerals[i]*(num/v).floor}" if num/v.floor != 0
    num = num % v
  end

  return output

end

puts old_roman_numeral 8721
puts old_roman_numeral 3891
