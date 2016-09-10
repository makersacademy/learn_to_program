def english_number number
   if number < 0
     return "Please enter a number that isn't negative."
   end
   if number == 0
     return "zero"
   end

   num_string = ""

   ones_place = ["one", "two","three", "four", "five", "six", "seven", "eight", "nine"]
   tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
   teenagers =  ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

   left = number
   write = left / 1000000000000  # how many trllions?
   left = left - write * 1000000000000 # substract the millions

   if write > 0
     trillions = english_number write # recursion!
     num_string = num_string + trillions + " trillion"
     if left > 0
       num_string = num_string + " "
     end
   end

   write = left / 1000000000  # how many billions?
   left = left - write * 1000000000 # substract the billions

   if write > 0
     billions = english_number write # recursion!
     num_string = num_string + billions + " billion"
     if left > 0
       num_string = num_string + " "
     end
   end


   write = left / 1000000  # how many millions?
   left = left - write * 1000000 # substract the millions

   if write > 0
     millions = english_number write # recursion!
     num_string = num_string + millions + " million"
     if left > 0
       num_string = num_string + " "
     end
   end

   write = left / 1000  # how many thousands?
   left = left - write * 1000  # substract the thousands

   if write > 0
     thousands = english_number write # recursion!
     num_string = num_string + thousands + " thousand"
     if left > 0
       num_string = num_string + " "
     end
   end

   write = left / 100  # how many hundreds?
   left = left - write * 100  # substract the hundreds

   if write > 0
     hundreds = english_number write # recursion!
     num_string = num_string + hundreds + " hundred"
     if left > 0
       num_string = num_string + " "
     end
   end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
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

bbottles = 99

while bbottles >1
  bb_eng = english_number bbottles
  bb_next = english_number (bbottles-1)
  puts (bb_eng + " bottles of beer on the wall, " + bb_eng + " bottles of beer!").capitalize
  puts "Take one down and pass it around, " + bb_next + " bottles of beer on the wall!"
  puts
  bbottles -=1
end
  puts "One bottle of beer on the wall, one bottle of beer!"
  puts "Take one down, pass it around, no more bottles of beer on the wall!"


 