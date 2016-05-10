def roman_numeral num
  output = ""+"M"*(num/1000)
  output += (num%1000)/100 == 9 ? "CM" : (num%1000)/100 == 4 ? "CD" : "D"*((num%1000)/500)+"C"*((num%500)/100)
  output += (num%100)/10 == 9 ? "XC" : (num%100)/10 == 4 ? "CL" : "L"*((num%100)/50)+"X"*((num%50)/10)
  output += num%10 == 9 ? "IX" : num%10 == 4 ? "IV" : "V"*((num%10)/5)+"I"*(num%5)
  output
end