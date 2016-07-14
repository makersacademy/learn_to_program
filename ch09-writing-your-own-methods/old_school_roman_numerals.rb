def old_roman_numeral (num)
  return puts "Please input a positive integer." if num <1
  return puts "Please input a number between 1-3000." unless num>=1 && num<=3000
  roman = ""
  roman << "M" * (num/1000)
  roman << "D" * (num%1000/500)
  roman << "C" * (num%500/100)
  roman << "L" * (num%100/50)
  roman << "X" * (num%50/10)
  roman << "V" * (num%10/5)
  roman << "I" * (num%5/1)
  roman

end

# puts "Old Roman Numeral Converter!"
# puts "Please enter your number (range: 1-3000):"
# num = gets.chomp.to_i
# old_roman_numeral (num)