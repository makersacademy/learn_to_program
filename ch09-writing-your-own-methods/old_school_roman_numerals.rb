def old_roman_numeral num
  roman = ''
    if num / 1000 > 0
  	  division = num / 1000
  	  roman << 'M' * division
  	  num = num - (division * 1000)
    end
    if num / 500 > 0
      division = num / 500
      roman << 'D' * division
      num = num - (division * 500)
  	end
  	if num / 100 > 0
  		division = num / 100
  		roman << 'C' * division
  		num = num - (division * 100)
  	end
  	if num / 50 > 0
  		division = num / 50
  		roman << 'L' * division
  		num = num - (division * 50)
  	end
  	if num / 10 > 0
  		division = num / 10
  		roman << 'X' * division
  		num = num - (division * 10)
  	end
  	if num / 5 > 0
  		division = num / 5
  		roman << 'V' * division
  		num = num - (division * 5)
  	end
  	if num != 0
  		division = num / 1
  		roman << 'I' * division
  	end
return roman
end

