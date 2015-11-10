def old_roman_numeral num
  numeral= ""
  	numeral << "M"*(num/1000)
  	numeral << "D"*(num%1000/500)
  	numeral << "C"*(num%1000%500/100)
  	numeral << "L"*(num%1000%500%100/50)
  	numeral << "X"*(num%1000%500%100%50/10)
  	numeral << "V"*(num%1000%500%100%50%10/5)
  	numeral << "I"*(num%1000%500%100%50%10%5/1)

  	numeral
end