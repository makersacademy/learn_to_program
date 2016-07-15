# Come back and tackle this with a less brute force method!

def english_number(number)
  return "Please enter a number that isn't negative." if number < 0
  return "zero" if number == 0

  num_string = ''
  ones_place = ['one',  'two',   'three',
               'four',  'five',  'six',
               'seven', 'eight', 'nine']
   tens_place = [ 'ten', 'twenty',   'thirty',
                  'forty', 'fifty', 'sixty',
                  'seventy',  'eighty',   'ninety']
   teenagers = ['eleven',  'twelve',   'thirteen',
               'fourteen', 'fifteen',  'sixteen',
               'seventeen',   'eighteen', 'nineteen']
   # "left" is remaining number yet to be written out
   # "write" is the part of the number we are writing now

   left = number
   write = left / 10**48
   left -= write * 10**48

   if write > 0
      quindecillion = english_number(write)
      num_string += quindecillion + ' quindecillion'
      num_string += " " if left > 0
   end

   write = left / 10**45
   left -= write * 10**45

   if write > 0
      quattuordecillion = english_number(write)
      num_string += quattuordecillion + ' quattuordecillion'
      num_string += " " if left > 0
   end

   write = left / 10**42
   left -= write * 10**42

   if write > 0
      tredecillion = english_number(write)
      num_string += tredecillion + ' tredecillion'
      num_string += " " if left > 0
   end

   write = left / 10**39
   left -= write * 10**39

   if write > 0
      duodecillion = english_number(write)
      num_string += duodecillion + ' duodecillion'
      num_string += " " if left > 0
   end

   write = left / 10**36
   left -= write * 10**36

   if write > 0
      undecillion = english_number(write)
      num_string += undecillion + ' undecillion'
      num_string += " " if left > 0
   end

   write = left / 10**33
   left -= write * 10**33

   if write > 0
      decillion = english_number(write)
      num_string += decillion + ' decillion'
      num_string += " " if left > 0
   end

   write = left / 10**30
   left -= write * 10**30

   if write > 0
      nonillion = english_number(write)
      num_string += nonillion + ' nonillion'
      num_string += " " if left > 0
   end

   write = left / 10**27
   left -= write * 10**27

   if write > 0
      octillion = english_number(write)
      num_string += octillion + ' octillion'
      num_string += " " if left > 0
   end

   write = left / 10**24
   left -= write * 10**24

   if write > 0
      septillion = english_number(write)
      num_string += septillion + ' septillion'
      num_string += " " if left > 0
   end

   write = left / 10**21
   left -= write * 10**21

   if write > 0
      sextillion = english_number(write)
      num_string += sextillion + ' sextillion'
      num_string += " " if left > 0
   end

   write = left / 10**18
   left -= write * 10**18

   if write > 0
      quintillion = english_number(write)
      num_string += quintillion + ' quintillion'
      num_string += " " if left > 0
   end

   write = left / 10**15
   left -= write * 10**15

   if write > 0
      quadrillion = english_number(write)
      num_string += quadrillion + ' quadrillion'
      num_string += " " if left > 0
   end

   write = left / 1_000_000_000_000
   left -= write * 1_000_000_000_000

   if write > 0
      trillions = english_number(write)
      num_string += trillions + ' trillion'
      num_string += " " if left > 0
   end

   write = left / 1_000_000_000
   left -= write * 1_000_000_000

   if write > 0
      billions = english_number(write)
      num_string += billions + ' billion'
      num_string += " " if left > 0
   end

   write = left / 1_000_000
   left -= write * 1_000_000

   if write > 0
      millions = english_number(write)
      num_string += millions + ' million'
      num_string += " " if left > 0
   end

   write = left / 1000  # thousands left
   left -= write * 1000 # subtract thousands

   if write > 0
      thousands = english_number(write)
      num_string += thousands + ' thousand'
      num_string += " " if left > 0
   end

   write = left / 100   # hundreds left
   left -= write * 100 # subtract hundreds


   if write > 0
      # Here comes the recursion (we build up digit by digit, starting biggest)
      hundreds = english_number(write)
      num_string += hundreds + ' hundred'
      num_string += " " if left > 0 # So we have a space after our hundreds
   end

   write = left / 10 # tens left
   left -= write * 10 # subtract tens

   if write > 0
      if (write == 1 && left > 0)
         num_string += teenagers[left - 1]
         # we have accounted for this teenage number, so don't forget to:
         left = 0
      else
         num_string += tens_place[write -1]
      end

      num_string += "-" if left > 0 # So we don't have fiftytwo
   end

   write = left   # "ones" remaining
   left = 0       # subtract the ones

   if write > 0
      num_string += ones_place[write - 1]
   end

   num_string
end

p english_number(0)
p english_number(10)
p english_number(24)
p english_number(142)
p english_number(1022)
p english_number(1_200_000_002)
p english_number(109238745102938560129834709285360238475982374561034)
