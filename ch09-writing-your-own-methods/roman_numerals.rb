def roman_numeral num
  x = num.to_s.reverse
  roman = []
  i = 0
  x.each_char {|y|
    y = y.to_i
  
    if i == 0
      if y < 4
        roman[i] = "I"*y
      elsif y ==4
        roman[i] = "IV"
      elsif y == 9
        roman[i] = "IX"
      else
        roman[i] = "V"+"I"*(y-5)
      end
    end
  
    if i ==1
      if y < 4
        roman[i] = "X"*y
      elsif y ==4
        roman[i] = "XL"
      elsif y == 9
        roman[i] = "XC"
      else
        roman[i] = "L"+"X"*(y-5)
      end
    end
  
    if i == 2
      if y < 4
        roman[i] = "C"*y
      elsif y ==4
        roman[i] = "CD"
      elsif y == 9
        roman[i] = "CM"
      else
        roman[i] = "D"+"C"*(y-5)
      end    
    end
  
    if i == 3
      roman[i] = "M"*y
    end
  
    i += 1
  }

  return roman.reverse.join("")
end

p roman_numeral 1999