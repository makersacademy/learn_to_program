# Program converts positive numbers to english quivalent words : e.g 100 => "one hundred"
  # SOLUTION (HEAVILY) INSPIRED FROM L2P ch10

def english_number number
  
  if number < 0
    return 'Please enter a positive number'
  elsif number == 0
    return 'zero'
  end

  num_in_english = ''

  units = ['one', 'two', 'three','four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'ninteen']

  over_hundreds = [['hundred', 2],           ['thousand', 3],        ['million', 6],
                   ['billion', 9],            ['trillion', 12],       ['quadrillion', 15],
                   ['quintillion', 18],       ['sextillion', 21],     ['septillion', 24],
                   ['octillion', 27],         ['nonillion', 30],      ['decillion', 33],
                   ['undecillion', 36],       ['duodecillion', 39],   ['tredecillion', 42],
                   ['quattuordecillion', 45], ['quindecillion', 48],  ['sexdecillion', 51],
                   ['septendecillion', 54],   ['octodecillion', 57],  ['novemdecillion', 60],
                   ['vigintillion', 63],      ['googol', 100]]

  # OR ... IF USING A HASH:

  # over_hundreds = {'hundred' => 2,          'thousand' => 3,        
  #                 'million' => 6,           'billion' => 9,             
  #                 'trillion' => 12,         'quadrillion' => 15,
  #                 'quintillion' => 18,      'sextillion' => 21,   
  #                 'septillion' => 24,       'octillion' => 27,
  #                 'nonillion' => 30,        'decillion' => 33,          
  #                 'undecillion' => 36,      'duodecillion' => 39,   
  #                 'tredecillion' => 42,     'quattuordecillion' => 45,  
  #                 'quindecillion' => 48,    'sexdecillion' => 51,
  #                 'septendecillion' => 54,  'octodecillion' => 57,  
  #                 'novemdecillion' => 60,   'vigintillion' => 63,  'googol' => 100 }

  left = number

  while over_hundreds.length > 0 
 
    over_hundred = over_hundreds.pop 
    over_hundred_name = over_hundred[0]
    over_hundred_num = 10 ** over_hundred[1] 
    write = left/over_hundred_num 
    left = left - write*over_hundred_num 

    if write > 0
      prefix = english_number write 
      num_in_english = num_in_english + prefix + ' ' + over_hundred_name

      if left > 0
        num_in_english = num_in_english + ' '
      end
    end
  end

  # ... IF USING A HASH:

  # over_hundreds.each do |name, num|
  #   over_hundred_name = name
  #   over_hundred_num = 10 ** num 

  #   write = left/over_hundred_num 
  #   left = left - write*over_hundred_num 

  #   if write > 0
  #     prefix = english_number write 
  #     num_in_english = num_in_english + prefix + ' ' + over_hundred_name

  #     if left > 0
  #       num_in_english = num_in_english + ' '
  #     end
  #   end
  # end

  write = left/10
  left = left - write*10

  if write > 0 
    if ((write == 1) and (left > 0))
      num_in_english = num_in_english + teens[left-1]
      left = 0
    else
      num_in_english = num_in_english + tens[write-1]
    end

    if left > 0
      num_in_english = num_in_english + '-' 
    end
  end

  write = left
  left = 0 

  if write > 0
    num_in_english = num_in_english + units[write-1]
  end

  num_in_english
end

# TEST THIS THING...
puts english_number(1999999)