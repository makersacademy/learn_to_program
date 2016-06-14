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
