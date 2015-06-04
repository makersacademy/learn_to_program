def old_roman_numeral num
  roman_num = ''
  roman_num << 'M' * (num/1000)
  roman_num << 'D' * (num%1000 / 500) 
  roman_num << 'C' * (num%500 / 100) 
  roman_num << 'L' * (num%100 / 50) 
  roman_num << 'X' * (num%50 / 10) 
  roman_num << 'V' * (num%10 / 5)   
  roman_num << 'I' * (num%5)
 # I * num/1
 # if num%5 == 0 puts 'V' 
 # if num%5 ==1 puts 'I'
  return roman_num
end

puts old_roman_numeral 1111
puts old_roman_numeral 2554