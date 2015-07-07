def old_roman_numeral num
  roman = ''
  roman << 'M'*(num/1000)
  roman << 'D'*(num%1000/500)
  roman << 'C'*(num%500/100)
  roman << 'L'*(num%100/50)
  roman << 'X'*(num%50/10)
  roman << 'V'*(num%10/5)
  roman << 'I'*(num%5/1)
puts roman
end
  # Test numbers
puts (old_roman_numeral(126)) 
puts (old_roman_numeral(2015))
puts (old_roman_numeral(1111)) 
  # User input
puts "Enter your own number and I'll convert it to Roman Numerals"
user = gets.chomp
puts (old_roman_numeral(user.to_i))
