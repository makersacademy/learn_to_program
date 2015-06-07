def old_roman_numeral num
  numeral = ""
  if (num/1000) != 0
  	numeral = numeral + ("M" * (num/1000).to_i)
  	num = num - ((num/1000).to_i * 1000)
  end
  if (num/500) != 0
  	numeral = numeral + ("D" * (num/500).to_i).to_s
  	num = num - ((num/500).to_i * 500) 
  end
  if (num/100) != 0
  	numeral = numeral + ("C" * (num/100).to_i).to_s
  	num = num - ((num/100).to_i * 100) 
  end	
  if (num/50) != 0
  	numeral = numeral + ("L" * (num/50).to_i).to_s
  	num = num - ((num/50).to_i * 50) 
  end	
  if (num/10) != 0
  	numeral = numeral + ("X" * (num/10).to_i).to_s
  	num = num - ((num/10).to_i * 10) 
  end	
  if (num/5) != 0
  	numeral = numeral + ("V" * (num/5).to_i).to_s
  	num = num - ((num/5).to_i * 5) 
  end	
  if (num/1) != 0
  	numeral = numeral + ("I" * (num/1).to_i).to_s
  	num = num - ((num/1).to_i * 1) 
  end		
  puts numeral.to_s
end
