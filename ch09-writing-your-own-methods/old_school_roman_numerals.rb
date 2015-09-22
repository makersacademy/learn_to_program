def old_roman_numeral num
  letters = [[1000, 'M'],
           [500, 'D'],
           [100, 'C'],
           [50, 'L'],
           [10, 'X'],
           [5, 'V'],
           [1, 'I']]

  remaining = num
  roman_string = ''

  letters.each do |letter|
    units = remaining / letter[0]
    remaining -= units * letter[0]
    roman_string << letter[1] * units
  end

  roman_string

end

puts 'Please enter a number to translate'
puts old_roman_numeral gets.chomp.to_i