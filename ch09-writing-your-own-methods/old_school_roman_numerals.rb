def old_roman_numeral(num)
  number="M"*(num/1000)+"D"*(num%1000/500)+"C"*(num%500/100)+"L"*(num%100/50)+"X"*(num%50/10)+"V"*(num%10/5)+"I"*(num%5)
  number
end

puts old_roman_numeral(19)

puts "-----"
puts "more elegant after looking at Chris Pine solutions"
puts "-----"

def old_roman_numeral(num)
  number=""
  number << "M"*(num/1000)
  number << "D"*(num%1000/500)
  number << "C"*(num%500/100)
  number << "L"*(num%100/50)
  number << "X"*(num%50/10)
  number << "V"*(num%10/5)
  number << "I"*(num%5)
  number
end

puts old_roman_numeral(19)
