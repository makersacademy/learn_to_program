def roman_numeral(num)
 
  thousands = (num/1000)
  hundreds = (num % 1000/100)
  tens = (num %100 / 10)
  ones = (num % 10)
  

  roman = ""
  roman = "M" * thousands
if hundreds == 9
   roman = roman + "CM"
  elsif hundreds == 4
   roman = roman + "CD"
  else 
   roman = roman + "D" * (num % 1000/500)
   roman = roman + "C" * (num % 500/100)
  end
if tens == 9
  roman = roman + "XC"
  elsif tens == 4 
  roman = roman + "XL"
  else
  roman = roman + "L" * (num % 100/ 50)
  roman = roman + "X" * (num % 50/ 10)
end
if ones == 9
  roman = roman + "IX"
  elsif ones == 4
  roman = roman + "IV"
  else
  roman = roman + "V" * (num % 10/ 5)
  roman = roman + "I" * (num % 5/ 1)
end

  roman
  
end

puts roman_numeral(2431)
puts roman_numeral(7324)
puts roman_numeral(1003)
puts roman_numeral(6894)
puts roman_numeral(6342)
puts roman_numeral(24)
puts roman_numeral(231)
puts roman_numeral(8431)