# your code here
counter = 9999


def english_number(number)
  
  if number == 0
    return 'zero'
  end
  
  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] 
  big_nums = [['hundred', 2], ['thousand', 3]]
  
  left = number  
  
  while big_nums.length > 0
    big_pair = big_nums.pop
    big_name = big_pair[0]
    big_base = 10 ** big_pair[1]
    write = left / big_base
    left = left - write*big_base
    
    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + ' ' + big_name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end
  
  write = left/10            # How many tens left?
  left = left - write*10     # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
  
  write = left      # How many ones left to write out?
  left = 0            # Subtract off those ones.
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end
  


while counter > 0
  
  if counter <= 1 
    puts "#{english_number(counter)} bottle of beer on the wall, #{english_number(counter)} bottle of beer!"
    puts "Take one down, pass it around!"
    puts "No more bottles of beer on the wall!" 
    break
  end
  
  puts "#{english_number(counter)} bottles of beer on the wall, #{english_number(counter)} bottles of beer!"
  puts "Take one down, pass it around!"
  counter -= 1
  
  
  puts "#{english_number(counter)} bottles of beer on the wall!"
  puts 
  
end










