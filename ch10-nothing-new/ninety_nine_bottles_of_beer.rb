def english_number number
  if number < 0  
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end


  numString = '' 

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left / 1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions = english_number write
    numString = numString + trillions + ' trillion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left / 1000000000
  left = left - write*1000000000

  if write > 0
    billions = english_number write
    numString = numString + billions + ' billion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left / 1000000
  left = left - write*1000000

  if write > 0
    millions = english_number write
    numString = numString + millions + ' million'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left / 1000
  left = left - write*1000

  if write > 0
    thousands = english_number write
    numString = numString + thousands + ' thousand'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100          
  left  = left - write*100  

  if write > 0
    
    hundreds  = english_number write
    numString = numString + hundreds + ' hundred'
    
    if left > 0
      
      numString = numString + ' '
    end
  end

  write = left/10          
  left  = left - write*10  

  if write > 0
    if ((write == 1) and (left > 0))
      
      numString = numString + teenagers[left-1]
      left = 0

    else
      numString = numString + tensPlace[write-1]
      
    end

    if left > 0
      
      numString = numString + '-'
    end
  end

  write = left  
  left  = 0     

  if write > 0
    numString = numString + onesPlace[write-1]
    
  end

  
  numString
end

flag = false

while (not flag)  
  puts 'How many bottles of beer are on the wall?'
  primary = gets.chomp.to_i
  if primary <= 0 
    puts 'Give me an answer that makes sense dummy!'
  else
    flag = true
  end
end

while (primary.to_i > 1)
  secondary = primary - 1
  puts english_number(primary) + ' bottles of beer on the wall, ' + english_number(primary) + ' bottles of beer,'
  puts 'take one down, pass it around, ' + english_number(secondary) + ' bottles of beer on the wall.'
  primary = secondary
end

puts 'One bottle of beer on the wall, one bottle of beer,'
puts 'take one down, pass it around, no more bottles of beer on the wall.'