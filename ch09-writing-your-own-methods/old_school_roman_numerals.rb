def old_roman_numeral num
  str = ''
  while num > 0
  	if num >= 1000
  		num = num - 1000
  		str << 'M'
  	elsif num >= 500
  		num = num - 500
  		str << 'D'
  	elsif num >= 100
  		num = num - 100
  		str << 'C'
  	elsif num >= 50
  		num = num - 50
  		str << 'L'
  	elsif num >= 10
  		num = num - 10
  		str << 'X'
  	elsif num >= 5
  		num = num - 5
  		str << 'V'
  	else
  		num = num - 1
  		str << 'I'
  	end
  end
  str
end