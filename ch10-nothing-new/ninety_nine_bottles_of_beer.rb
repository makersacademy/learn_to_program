def english_number number
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end

  num_string = '' # this is what we'll be returning

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15],
              ['quintillion', 18], ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30],
              ['decillion', 33], ['undecillion', 36], ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45],
              ['quindecillion', 48], ['sexdecillion', 51], ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60],
              ['vigintillion', 63], ['googol',100]]

 left = number           # how much of the number we still have left to write our

 while zillions.length > 0
   zil_pair = zillions.pop
   zil_name = zil_pair[0]
   zil_base = 10 ** zil_pair[1]
   write = left/zil_base        # how many zillions left (includes hundreds)
   left = left - write*zil_base # subtract those zillions


  if write > 0  #recursion bit
   prefix = english_number write
   num_string = num_string + prefix + ' ' + zil_name

    if left > 0
     num_string = num_string + ' '
    end
   end
 end

 write = left/10 # how many tens left
 left = left - write*10 # subtract those tens

 if write > 0
   if ((write == 1) and (left > 0)) # teens case
     num_string = num_string + teens[left-1] # -1 is because teens[3] is fourteen and not thirteen
     left = 0
   else
     num_string = num_string + tens[write-1] # -1 is beacuse tens[3] is forty and not thirty
   end

   if left > 0
     num_string = num_string + '-'
   end
 end

 write = left # how many ones left to write out?
 left = 0     # subtract those ones

 if write > 0
   num_string = num_string + ones[write-1]
 end

 num_string

end

num_at_start = 99
num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + " bottles of beers on the wall, #{english_number(num_now)} bottles of beer!"
       num_now = num_now - 1
  puts "Take one down and pass it around, #{num_now.to_s} bottles of beer on the wall!"
end

     puts "Two  bottles of beer on the wall, Two bottles of beer!"
     puts "Take one down and pass it around, one bottle of beer on the wall."
     puts "one bottle of beer on the wall, one bottle of beer."
     puts "Take one down and pass it around, no more bottles of beer on the wall."
     puts "No more bottles of beers on the wall, no more bottles of beer."
     puts "Go to the store and buy some more, 99 bottles of beer on the wall."
