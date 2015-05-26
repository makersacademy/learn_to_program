def old_roman_numeral num
  roman_num = ''
  roman_num << 'M' * (num/1000)
  roman_num << 'D' * (num%1000 / 500) 
  roman_num << 'C' * (num%500 / 100) 
  roman_num << 'X' * (num%100 / 50) 
  roman_num << 'L' * (num%50 / 10) 
  roman_num << 'V' * (num%10 / 5)   
  num%5 == 4 ? roman_num << 'IV' : roman_num << 'I' * (num%5)   #condition ? if_true : if_false


  return roman_num
end

puts old_roman_numeral 1444
puts old_roman_numeral 1999
puts old_roman_numeral 2554