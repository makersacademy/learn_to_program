def old_roman_numeral number
	  result = '' #creates the string to output
  result = result + "M" * (number/1000) # how many thousands
   result = result + "D" * (number % 1000 /500) #how many 500 s
  
   result = result + "C" * (number % 500 /100)
  

   result = result + "L" * (number % 100 /50)
  
   result = result + "X" * (number % 50 /10)
   result = result + "V" * (number % 10 /5)
   result = result + "I" * (number % 5)

  #now we have a whole lot of exceptions - not v elegant but I will try and gsub them all out
result.gsub('VIIII','IX').gsub('IIII','IV').gsub('XXXX','XL').gsub('LXL','XC').gsub('DCD','CM').gsub('CCCC','CD')
end

puts old_roman_numeral(1779)
puts old_roman_numeral(1774)
puts old_roman_numeral(40)
puts old_roman_numeral(90)
puts old_roman_numeral(400)
puts old_roman_numeral(1400)
puts old_roman_numeral(900)
puts old_roman_numeral(4)
puts old_roman_numeral(9)
puts old_roman_numeral(19)
puts old_roman_numeral(29)
puts old_roman_numeral(49)
puts old_roman_numeral(99)
puts old_roman_numeral(999)
puts old_roman_numeral(499)
puts old_roman_numeral(79)

