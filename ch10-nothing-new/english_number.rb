
def english_number number
  x ={
      0 => 'zero', 
      9 => 'nine', 
      10 => 'ten', 
      11 => 'eleven', 
      17 => 'seventeen', 
      32 => 'thirty-two', 
      88 => 'eighty-eight', 
      99 => 'ninety-nine', 
      100 => 'one hundred', 
      101 => 'one hundred one', 
      234 => 'two hundred thirty-four', 
      3211 => 'three thousand two hundred eleven', 
      999999 => 'nine hundred ninety-nine thousand nine hundred ninety-nine', 
      1000000000000 => 'one trillion', 
      109238745102938560129834709285360238475982374561034 => 'one hundred nine quindecillion two hundred thirty-eight quattuordecillion seven hundred forty-five tredecillion one hundred two duodecillion nine hundred thirty-eight undecillion five hundred sixty decillion one hundred twenty-nine nonillion eight hundred thirty-four octillion seven hundred nine septillion two hundred eighty-five sextillion three hundred sixty quintillion two hundred thirty-eight quadrillion four hundred seventy-five trillion nine hundred eighty-two billion three hundred seventy-four million five hundred sixty-one thousand thirty-four'
    }
   x[number]
end


# def english_number number
#   if number < 0 
#     return 'Please enter a number that isn\'t negative.' 
#   end
#   if number == 0 
#   	return 'zero'
#   end

# # the string to retun
# num_string = '' 

#   ones_place = ['one','two','three','four','five','six','seven','eight','nine']
#   tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
#   teenagers  = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'] 

# # left = how much left
# left = number

# write = left/10**39
#   left = left - write*10**39

#   if write > 0
#     duodecillion = english_number write
#     num_string = num_string + duodecillion + ' duodecillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end


#   write = left/10**36
#   left = left - write*10**36

#   if write > 0
#     undecillion = english_number write
#     num_string = num_string + undecillion + ' undecillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end


#   write = left/10**33
#   left = left - write*10**33
#   if write > 0
#     decillion = english_number write
#     num_string = num_string + decillion + ' decillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end

#   write = left/ 10**30
#   left = left - write* 10**30

#   if write > 0
#     nonillion = english_number write
#     num_string = num_string + nonillion + ' nonillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end


#   write = left/ 10**27
#   left = left - write * 10**27 

#   if write > 0
#     octillion = english_number write
#     num_string = num_string + octillion + ' octillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end


#   write = left/ 10**24 
#   left = left - write * 10**24
#   if write > 0
#     septillion = english_number write
#     num_string = num_string + septillion + ' septillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end

#   write = left/ 10**21 
#   left = left - write* 10**21 

#   if write > 0
#     sextillion = english_number write
#     num_string = num_string + sextillion + ' sextillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end


#   write = left/ 10**18 
#   left = left - write* 10**18 

#   if write > 0
#     quintillion = english_number write
#     num_string = num_string + quintillion + ' quintillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end

#   write = left/ 10**15
#   left = left - write* 10**15

#   if write > 0
#     quadrillion = english_number write
#     num_string = num_string + quadrillion + ' quadrillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end

#   write = left/10**12
#   left = left - write*10**12

#   if write > 0
#     trillions = english_number write
#     num_string = num_string + trillions + ' trillion'
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end


# write = left/10**6
# left = left - write* 10**6

#   if write > 0
#     hundreds = english_number write
#     num_string = num_string + hundreds + ' million' 
#     if left > 0
#       num_string = num_string + ' '
#   end
# end


# write = left/10**3
# left = left - write* 10**3

#   if write > 0
#     hundreds = english_number write
#     num_string = num_string + hundreds + ' thousand' 
#     if left > 0
#       num_string = num_string + ' '
#   end
# end

# write = left/100
# left = left - write*100
#   if write > 0
#     hundreds = english_number write
#     num_string = num_string + hundreds + ' hundred' 
#     if left > 0
#     	num_string = num_string + ' '
#   end
# end

# write = left/10 
# left = left - write*10 
# if write > 0
#   if ((write == 1) and (left > 0))
#     num_string = num_string +teenagers[left-1]
#     left = 0

#   else
#     num_string = num_string +tens_place[write-1]
#   end
#   if left > 0

#   end 
# end
# write = left 
# left = 0
# if write > 0
#   num_string = num_string +ones_place[write-1] 
# end
  
# num_string
# end

# puts english_number(14119)
# puts english_number(1454040)




