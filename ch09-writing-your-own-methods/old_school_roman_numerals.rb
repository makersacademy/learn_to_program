def old_roman_numeral num
  string=""
  string << "M"*(num/1000)
  string << "D"*((num%1000)/500)
  string << "C"*((num%500)/100)
  string << "L"*((num%100)/50)
  string << "X"*((num%50)/10)
  string << "V"*((num%10)/5)
  string << "I"*(num%5)
end
  # your code here









#integer division
#<< add to the string method
=begin
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000
=end