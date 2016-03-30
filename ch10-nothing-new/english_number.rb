def eng_num number
  num = ''
  if number == 0
    num = 'zero'
  else
  ones = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tens = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teens = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  first  = number
  
  second = first/1000000000
  first = first - second*1000000000
  if second > 0
  	billions = eng_num second
  	num = num + billions + ' billion'
  	if first > 0
  		num = num + ' '
  	end
  end
  
  second = first/1000000
  first = first - second*1000000
  if second > 0
  	millions = eng_num second
  	num = num + millions + ' million'
  	if first > 0
  		num = num + ' '
  	end
  end
  
  second = first/1000
  first = first - second*1000
  
  if second > 0
  	thousands = eng_num second
  	num = num + thousands + ' thousand'
  	if first > 0
  		num = num + ' '
  	end
  end
 
  second = first/100
  first = first - second*100

  if second > 0
    hundreds = eng_num second
    num = num + hundreds + ' hundred'
    if first > 0
      num = num + ' '
    end
  end

  second = first/10
  first  = first - second*10

  if second > 0
    if ((second == 1) and (first > 0))
      num = num + teens[first-1]
      first = 0
    else
      num = num + tens[second-1]
    end
    if first > 0
      num = num + '-'
    end
  end
  second = first
  first  = 0
  if second > 0
    num = num + ones[second-1]
  end
  end
  num
end
