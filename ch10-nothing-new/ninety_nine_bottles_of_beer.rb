def english_number number
  if number < 0
    return 'Please enter a positive number under a trillion'
  end
  if number == 0
    return 'zero'
  end

  num_s = ''
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  millions   = [['hundred',  2],
                ['thousand', 3],
                ['million',  6],
                ['billion',  9]]

  remainder = number

  while millions.length > 0
    x = millions.pop
    power = x[1]
    divisor_n = 10**power
    divisor_w = x[0]

    quotient = remainder/divisor_n
    remainder = remainder - quotient*divisor_n
    #puts (number.to_s + ' ' + quotient.to_s + ' ' + remainder.to_s)

    if quotient > 0
      words = english_number quotient
      num_s = num_s + words + ' ' + divisor_w

      if remainder > 0
        num_s += ' '
      end
    end
  end

  quotient = remainder/10
  remainder = remainder - quotient*10

  if quotient > 0
    if quotient == 1 && remainder > 0
      num_s = num_s + teenagers[remainder-1]
      remainder = 0
    else
      num_s = num_s + tens_place[quotient-1]
    end
    if remainder > 0
      num_s += '-'
    end
  end

  if remainder > 0
    num_s = num_s + ones_place[remainder-1]
  end
  num_s
end

num = 10
while num > 2
  puts english_number(num).capitalize + ' bottles of beer on the wall, ' +
       english_number(num) + ' bottles of beer!'
  num -= 1
  puts 'Take one down, pass it around, ' + english_number(num) +
       ' bottles of beer on the wall!'
end

puts 'Two bottles of beer on the wall, two bottles of beer!'
puts 'Take one down, pass it around, one bottle of beer on the wall!'
puts 'One bottle of beer on the wall, one bottle of beer!'
puts 'Take one down, pass it around, no more bottles of beer on the wall!'
