def english_number number
if number < 0 
return 'Please enter a number that isn\'t negative.'
end

if number == 0
return 'zero'
end

num_string = '' 
ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']



left = number
  write = left/10**100
  left = left - write*(10**100)
  if write > 0
  googol = english_numer write
  num_string = num_string + googol  + ' googol'
  if left> 0
  num_string= num_string+ ' '
  end
  end
  
  write = left/10**63
  left = left - write*(10**63)
  if write > 0
  vigintillion = english_numer write
  num_string = num_string + vigintillion + ' vigintillion'
  if left> 0
  num_string= num_string+ ' '
  end
  end
  
  write = left/10**60
  left = left - write*(10**60)
  if write > 0
  novemdecillion = english_numer write
  num_string = num_string + novemdecillion + ' novemdecillion'
  if left> 0
  num_string= num_string+ ' '
  end
  end
  
 write = left/10**57
  left = left - write*(10**57)
  if write > 0
  octodecillion = english_numer write
  num_string = num_string + octodecillion + ' octodecillion'
  if left> 0
  num_string= num_string+ ' '
  end
  end
 
  write = left/10**54
  left = left - write*(10**54)
  if write > 0
  septendecillion = english_numer write
  num_string = num_string + septendecillion + ' septendecillion'
  if left> 0
  num_string= num_string+ ' '
  end
  end
   write = left/10**51
  left = left - write*(10**51)
  if write > 0
  sexdecillion = english_numer write
  num_string = num_string + sexdecillion + ' sexdecillion'
  if left> 0
  num_string= num_string+ ' '
  end
  end
  
  write = left/10**48
  left = left - write*(10**48)
  if write > 0
  quindecillion = english_numer write
  num_string = num_string + quindecillion + ' quindecillion'
  if left> 0
  num_string= num_string+ ' '
  end
  end
    wrire = left/10**45
  left = left - write*(10**45)
  if write > 0 
  quattuordecillion = eglish_numer write
  num_string = num_string + quattuordecillion + ' quattuordecillion'
  if left > 0 
  num_string = num_string + ' '
  end 
  end
  write = left/(10**42)
    left = left - write*(10**42)
    if write > 0
      tredecillions = english_number(write)
     num_string = num_string + tredecillions + ' tredecillion'
      if left > 0
        num_string = num_string + ' '
     end
   end
    write = left/(10**39)
    left = left - write*(10**39)
    if write > 0
      duodecillions = english_number(write)
      num_string = num_string + duodecillions + ' duodecillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**36)
    left = left - write*(10**36)
    if write > 0
     undecillions = english_number(write)
      num_string = num_string + undecillions + ' undecillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**33)
    left = left - write*(10**33)
    if write > 0
      decillions = english_number(write)
      num_string = num_string + decillions + ' decillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**30)
    left = left - write*(10**30)
    if write > 0
      nonillions = english_number(write)
      num_string = num_string + nonillions + ' nonillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**27)
    left = left - write*(10**27)
    if write > 0
      octillions = english_number(write)
      num_string = num_string + octillions + ' octillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**24)
    left = left - write*(10**24)
    if write > 0
      septillions = english_number(write)
      num_string = num_string + septillions + ' septillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
   write = left/(10**21)
    left = left - write*(10**21)
    if write > 0
      sextillions = english_number(write)
    num_string = num_string + sextillions + ' sextillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**18)
  left = left - write*(10**18)
  if write > 0
      quintillions = english_number(write)
      num_string = num_string + quintillions + ' quintillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**15)
    left = left - write*(10**15)
    if write > 0
      quadrillions = english_number(write)
      num_string = num_string + quadrillions + ' quadrillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/(10**12)
    left = left - write*(10**12)
    if write > 0
      trillions = english_number(write)
      num_string = num_string + trillions + ' trillion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/1000000000
    left = left - write*1000000000
    if write > 0
      billions = english_number(write)
      num_string = num_string + billions + ' billion'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/1000000
    left = left - write*1000000
    if write > 0
      millions = english_number(write)
      num_string = num_string + millions + ' million'
      if left > 0
        num_string = num_string + ' '
      end
    end
    write = left/1000
    left = left - write*1000
    if write > 0
      thousands = english_number(write)
      num_string = num_string + thousands + ' thousand'
      if left > 0
        num_string = num_string + ' '
      end
    end  
  write = left/100
  left = left - write*100
  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))

      num_string = num_string + teenagers[left-1]
      left = 0

    else

      num_string = num_string + tens_place[write-1]

    end

    if left > 0

      num_string = num_string + '-'

    end
  end

  write = left # How many ones left to write out?

  left = 0 # Subtract off those ones.

  if write > 0

    num_string = num_string + ones_place[write-1]
  end
  num_string
end










