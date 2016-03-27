def old_roman_numeral num
  # your code here
 roman_num = ""
  roman_num << "M" * (num/1000)
  roman_num << "D" * ((num%1000)/500)
 roman_num << "C" * (((num%1000)%500)/100)
  roman_num << "L" * ((((num%1000)%500)%100)/50)
  roman_num << "X" * (((((num%1000)%500)%100)%50)/10)
  roman_num << "V" * ((((((num%1000)%500)%100)%50)%10)/5)
  roman_num << "I" * (((((((num%1000)%500)%100)%50)%10)%5)/1)
  roman_num
end
