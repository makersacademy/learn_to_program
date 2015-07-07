def roman_numeral num
  # digits that may need adjustment
  hundreds = (num%1000/100)
  tens = (num%100/10)
  ones = (num%10)

  roman = ''
  roman << 'M'*(num/1000)
  
  if hundreds == 9
    roman = roman + 'CM'
  elsif hundreds == 4 
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100) 
  end 

  if tens == 9 
    roman = roman + 'XC'
  elsif tens == 4 
    roman = romann + 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10) 
  end

  if ones == 9 
    roman = roman + 'IX'
  elsif ones == 4 
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1) 
  end

puts roman
end
  # Test numbers
puts (roman_numeral(4)) 
puts (roman_numeral(2015))
puts (roman_numeral(1499)) 
  # User input
puts "Enter your own number and I'll convert it to Roman Numerals"
user = gets.chomp
puts (roman_numeral(user.to_i))
