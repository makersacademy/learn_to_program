def english_number number
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0

  num_string = ''
  ones_place = ['one', 'two', 'three',
  'four', 'five', 'six',
  'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
  'forty', 'fifty', 'sixty',
  'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
  'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen']
  
  big_uns = {"quindecillion" => 10**48,
    "quattuordecillion" => 10**45,
    "tredecillion" => 10**42,
    "duodecillion" => 10**39,
    "undecillion" => 10**36,
    "decillion" => 10**33,
    "nonillion" => 10**30,
    "octillion" => 10**27,
    "septillion" => 10**24,
    "sextillion" => 10**21,
    "quintillion" => 10**18,
    "quadrillion" => 10**15,
    "trillion" => 10**12,
    "billion" => 10**9, 
    "million" => 10**6,
    "thousand" => 10**3}

  left = number
  
  big_uns.each do |name, value| # This block deals with values > 1000
    write = left/value 
    left = left - write*value
    if write > 0
      pre_name = english_number write
      num_string = num_string + pre_name + " #{name}"
      num_string = num_string + ' ' if left > 0
    end 
  end
  
  write = left/100 # Hundreds section
  left = left - write*100 
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    num_string = num_string + " " if left > 0
  end
  
  write = left/10 # Tens section
  left = left - write*10 
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
      num_string = num_string + '-' if left > 0
  end
  
  write = left
  left = 0
  num_string = num_string + ones_place[write-1] if write > 0

  num_string
end
