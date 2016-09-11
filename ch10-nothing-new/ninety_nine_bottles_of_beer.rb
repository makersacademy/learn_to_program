def english_number(number)
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']

  illions = ["quindecillion", "quattuordecillion", "tredecillion",
             "duodecillion", "undecillion","decillion",
             "nonillion", "octillion", "septillion",
             "sextillion", "quintillion", "quadrillion",
             "trillion", "billion", "million"]

  left = number

  illions.each_with_index do |word, i|
    divisor = 10 ** (3 * (illions.length - i + 1))
    write = left / divisor
    left = left - write * divisor

    if write > 0
      millions = english_number(write)
      num_string = num_string + millions + ' ' + word
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left / 1000
  left = left - write * 1000
  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 100
  left = left - write * 100
  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 10
  left = left - write * 10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

=begin
puts "Please enter a number between 0 and 1000 bottles of beer"
number = gets.chomp.to_i

bottles = number

while bottles > 0
  puts "#{english_number(bottles).capitalize} bottles of beer on the wall,
  #{english_number(bottles)} bottles of beer. Take one down and pass it
  around, #{english_number(bottles - 1)} bottles of beer on the wall."

  english_number(bottles) + " bottles of Beer on the wall."
  bottles -= 1
  if bottles == 0
    puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end
=end
