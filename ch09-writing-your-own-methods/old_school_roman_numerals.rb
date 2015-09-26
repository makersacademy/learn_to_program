def old_roman_numeral num
  old_roman = ''

  old_roman = old_roman + 'M' * (num / 1000)
  old_roman = old_roman + 'D' * (num % 1000 / 500)
  old_roman = old_roman + 'C' * (num % 500 / 100)
  old_roman = old_roman + 'L' * (num % 100 / 50)
  old_roman = old_roman + 'X' * (num % 50 / 10)
  old_roman = old_roman + 'V' * (num % 10 / 5)
  old_roman = old_roman + 'I' * (num % 5 / 1)
  old_roman
end

#Manual input

=begin
puts 'Please enter an integer number:'
number = gets.to_i
puts(old_roman_numeral(number))
=end