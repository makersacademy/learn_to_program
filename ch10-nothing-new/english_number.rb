# put in a number < 1000 in numeric form, return the number in
# English form
def hundred_less number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end

  num_string = ''

  ones_place = ['one',
  'two',
  'three',
  'four',
  'five',
  'six',
  'seven',
  'eight',
  'nine']

  tens_place = ['ten',
  'twenty',
  'thirty',
  'forty',
  'fifty',
  'sixty',
  'seventy',
  'eighty',
  'ninety']

  teenagers = ['eleven',
  'twelve',
  'thirteen',
  'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/100
  left = left - write*100

  if write > 0
    hundreds = hundred_less write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/10

  left = left - write*10

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

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

def english_number number
  # your code here
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

  num_string = ''

  digits = {
    1000 => "thousand",
    1000000 => "million",
    1000000000 => "billion",
    1000000000000 => "trillion",
    1000000000000000 => "quadrillion",
    1000000000000000000 => "quintillion",
    1000000000000000000000 => "sextillion",
    1000000000000000000000000 => "septillion",
    1000000000000000000000000000 => "octillion",
    1000000000000000000000000000000 => "nonillion",
    1000000000000000000000000000000000 => "decillion",
    1000000000000000000000000000000000000 => "undecillion",
    1000000000000000000000000000000000000000 => "duodecillion",
    1000000000000000000000000000000000000000000 => "tredecillion",
    1000000000000000000000000000000000000000000000 => "quattuordecillion",
    1000000000000000000000000000000000000000000000000 => "quindecillion",
  }

  left = number

  #return the keys of the digits in reverse order
  digits.keys.reverse.each do |tenpower|
    if left / tenpower > 0
      write = left / tenpower
      num_string += "#{hundred_less(write)} #{digits[tenpower]} "
      left = left - write * tenpower
    end
  end

  num_string += hundred_less(left)
  num_string.strip
end
