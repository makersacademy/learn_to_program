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

  big_numbers = [
                 ["quindecillion"     ,10**48],
                 ["quattuordecillion" ,10**45],
                 ["tredecillion"      ,10**42],
                 ["duodecillion"      ,10**39],
                 ["undecillion"       ,10**36],
                 ["decillion"         ,10**33],
                 ["nonillion"         ,10**30],
                 ["octillion"         ,10**27],
                 ["septillion"        ,10**24],
                 ["sextillion"        ,10**21],
                 ["quintillion"       ,10**18],
                 ["quadrillion"       ,10**15],
                 ["trillion"          ,10**12],
                 ["billion"           ,10**9],
                 ["million"           ,10**6],
                 ["thousand"          ,1000]]

  left  = number

  big_numbers.each do | name, bignum |
  
    write = left / bignum          
    left  = left - write * bignum  

  
    if write > 0
      current  = english_number write
      numString = numString + current + " #{name}" 
      if left > 0
        numString = numString + ' '
      end
    end

  end

  write = left/100          
  left  = left - write*100  

  if (write > 0) 
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


#puts english_number 10
puts english_number 22000
puts english_number 2000000
puts english_number 3211
