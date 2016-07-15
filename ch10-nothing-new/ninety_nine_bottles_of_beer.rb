def english_number number
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end

  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + " thousand"
    if left > 0
      @um_string = num_string + ' '
    end
  end

  write = left/100
  left = left - write*100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teens[left-1]
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

def bottle_count number
  counter = number
  while counter > 0
    if counter > 1
      puts english_number(counter).capitalize + " bottles of beer on the wall! " + english_number(counter).capitalize + " bottles of beer!"

      counter -= 1

      if counter != 1
        puts "You get one down, pass it around. " + english_number(counter).capitalize + " bottles of beer on the wall!"
      else
        puts "You get one down, pass it around. " + english_number(counter).capitalize + " bottle of beer on the wall!"
      end
    else
      puts english_number(counter).capitalize + " bottle of beer on the wall! " + english_number(counter).capitalize + " bottle of beer!"
      puts "You get one down, pass it around. No more bottles of beer on the wall!"
      break
    end
  end
end
puts bottle_count(12)
