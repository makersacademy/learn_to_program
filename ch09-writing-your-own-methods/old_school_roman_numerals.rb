def old_roman_numeral num
 # input = num.to_s

  roman = {one: "I", five: "V", ten: "X", fifty: "L", hunds: "C", fivehund: "D", thous: "M"}
             
  result = ''
 
  thous =     (num        / 1000) 
  fivehund =  (num % 1000 / 500)
  hunds =     (num % 500  / 100) 
  fifty  =    (num % 100   / 50)
  ten  =      (num % 50    / 10)
  five =      (num % 10    / 5)
  one  =      (num % 5     / 1)
   
  thous.times do result << roman[:thous] end 
  fivehund.times do result << roman[:fivehund] end  
  hunds.times do result << roman[:hunds] end  
  fifty.times do result << roman[:fifty] end  
  ten.times do result << roman[:ten] end  
  five.times do result << roman[:five] end  
  one.times do result << roman[:one] end

  result

  
=begin   
  units.each do | unit |
   unit.times  do result << roman[unit] end  
  end
=end
end

puts old_roman_numeral 2600
puts old_roman_numeral 26
puts old_roman_numeral 50
puts old_roman_numeral 1
puts old_roman_numeral 5
