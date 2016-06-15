def roman_numeral num
 	str = "M"*(num/1000) + "D"*(num%1000/500) + "C"*(num%500/100) + "L"*(num%100/50) + "X"*(num%50/10) + "V"*(num%10/5) + "I"*(num%5/1)
 	str.gsub('XXXX', 'XC').gsub('IIII','IV').gsub('VIV','IX')
end
