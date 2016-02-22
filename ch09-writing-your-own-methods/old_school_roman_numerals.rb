=begin
I = 1 V = 5 X = 10 L = 50

C = 100 D = 500 M = 1000
=end


def old_roman_numeral num
  str=""
  str << "M"*(num/1000)
  str << "D"*((num%1000)/500)
  str << "C"*((num%500)/100)
  str << "L"*((num%100)/50)
  str << "X"*((num%50)/10)
  str << "V"*((num%10)/5)
  str << "I"*(num%5)
end
