def old_roman_numeral num
  roman_num = ''

  no_thousands = num/1000
  no_hundreds = (num%1000)/100
  no_tens = (num%100)/10
  no_ones = num%10
  
  roman_num << 'M' * no_thousands
    
  if (no_hundreds == 4)
    roman_num << 'CD' 
  elsif (no_hundreds == 9)
    roman_num << 'CM'
  elsif (no_hundreds == 5)
   
  else
    roman_num << 'D' * (num%1000 / 500) 
    roman_num << 'C' * (num/1000)
  end

#  roman_num << 'M' * (num/1000)
#  roman_num << 'D' * (num%1000 / 500) 
#  roman_num << 'C' * (num%500 / 100) 
#  roman_num << 'L' * (num%100 / 50) 
#  roman_num << 'X' * (num%50 / 10) 
#  roman_num << 'V' * (num%10 / 5)   
#  (num%5 == 4) && ((num/5)%2 ==1) ? roman_num << 'IX' : roman_num << 'I' * (num%5)   #condition ? if_true : if_false
#  (num%5 == 4) && ((num/5)%2 ==0) ? roman_num << 'IV' : roman_num << 'I' * (num%5)   #condition ? if_true : if_false
 

  
  return roman_num
end
puts old_roman_numeral 9
puts old_roman_numeral 14
puts old_roman_numeral 1999
puts old_roman_numeral 2554