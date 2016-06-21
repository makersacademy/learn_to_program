def old_roman_numeral num
  # your code here
  number = ''

  number = number + 'M' * (num / 10000)
  number = number + 'D' * (num % 10000 / 500)
  number = number + 'C' * (num % 500 / 100)
  number = number + 'L' * (num % 100 / 50)
  number = number + 'X' * (num % 50 / 10)
  number = number + 'V' * (num % 10 / 5)
  number = number + 'I' * (num % 5 / 1)
  number
  
end

puts "convert to roman numerals: "
num = gets.chomp
puts(old_roman_numeral(num.to_i))
