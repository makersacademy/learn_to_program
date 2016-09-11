def english_number number
  if number < 0
    return 'Please enter a numer that isnt negative'
  end
  if number == 0
    return 'zero'
  end
  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  left = number

  write = left / 1000000000
  left = left - write*1000000000
  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 1000000
  left = left - write*1000000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 1000
  left = left - write*1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end
  write = left / 100
  left = left - write*100
  if write > 0
    hundreds = english_number write
  num_string = num_string + hundreds + ' hundred'
  if left > 0
    num_string = num_string + ' and '
  end
end
write = left / 10
left = left - write*10
if write > 0
  if ((write == 1) and (left >0))
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

def ninety_nine_bottles start_num


  while  start_num > 0
    start_num_english = english_number start_num
    start_num_caps = start_num_english.capitalize
    next_num = start_num - 1
    next_num_english = english_number next_num

    if start_num == 1
      puts "#{start_num_caps} bottle of beer on the wall, #{start_num_english}"
      puts "bottle of beer. Take one down, pass it around, #{next_num_english}"
      puts "bottles of beer on the wall."
      puts
    else
      puts "#{start_num_caps} bottles of beer on the wall, #{start_num_english}"
      puts "bottles of beer. Take it down, pass it around, #{next_num_english}"
      puts "bottles of beer on the wall."
      puts
    end
start_num = start_num - 1
next_num = next_num - 1
end
end

ninety_nine_bottles 10
