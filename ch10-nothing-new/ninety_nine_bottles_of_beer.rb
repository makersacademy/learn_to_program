def english_number number
  if number < 0
     return "Please enter a postivie integer"
  end

  if number == 0
    return 'Zero'
  end

  num_string =""

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  #left is how much left to write out
  #write is the part we are writing out now
  left = number

  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillion = english_number write
    num_string = num_string + trillion + " trillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
    million = english_number write
    num_string = num_string + million + " million"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + " thousand"
    if left > 0
      num_string = num_string + " "
    end
  end


  write = left/100 #how many hundreds left
  left = left - write*100 #subrtact off the hundreds

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
   if left > 0
     num_string = num_string + " "
   end
  end

  write = left/10 #how many tens left
  left = left - write*10 #subtract the tens off

  if write > 0
    if ((write ==1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
   num_string
end

start = 85
current = start
while current > 0
  puts english_number(current) + " bottles of beer on the wall " + english_number(current) + " bottles of beer"
  current = current - 1

  puts "Take on down, pass it around " + english_number(current) + " bottles of beer on the wall!"
end
 puts "No more bottles of beer on the wall, no more bottles of beer! Go home. You're drunk"
