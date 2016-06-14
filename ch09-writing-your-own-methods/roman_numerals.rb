def roman_numeral (num)
  return puts "Please input a positive integer." if num <1
  return puts "Please input a number between 1-3000." unless num>=1 && num<=3000
  roman = ""
  thousands = (num/1000)
  hundreds = (num%1000/100)
  tens = (num%100/10)
  ones = (num%10/1)

  roman << "M" * thousands
  if hundreds == 9
  	roman << "CM"
  elsif hundreds == 4
  	roman << "CD"
  else
  	roman << "D"*(num%1000/500)
  	roman << "C"*(num%500/100)
  end

  if tens == 9
  	roman << "XC"
  elsif tens == 4
  	roman << "XL"
  else
  	roman << "L"*(num%100/50)
  	roman << "X"*(num%50/10)
  end

  if ones == 9
  	roman << "IX"
  elsif ones == 4
  	roman << "IV"
  else
  	roman << "V"*(num%10/5)
  	roman << "I"*(num%5/1)
  end

  puts roman

end

