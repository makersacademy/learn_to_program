def english_number number
  if number < 0 # only positive numbers
    return 'Please enter a number that is not negative'
  end
  
  if number == 0 #if the number is zero return zero
    return 'zero'
  end
  
  num_string = '' #initialize an empty string that we'll return
  
  ones_place = ['one', 'two','three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['quintillion', 18], ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30], ['decillion', 33], ['undecillion', 36], ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45], ['quindecillion', 48]]                          
  
  left = number
  
  while zillions.length > 0
  zil_pair = zillions.pop
  zil_name = zil_pair[0]
  zil_base = 10 ** zil_pair[1]
  write = left / zil_base # how many zillions we have
  left = left - write * zil_base #and deduct them from the left number
  
  if write > 0
    prefix = english_number write #recursion for zillions
    num_string = num_string + prefix + ' ' + zil_name # write out the zillions
    
    if left > 0 # if there any residuals left add a space between the zillions and the rest of the number
      num_string = num_string + ' '
    end
  end
  
  end
  
  # ----TENS---
  write = left / 10 #find out how many tens left 
  left = left - write * 10 #deduct the tens from the number left to deal with
  
  if write > 0 
    if ((write == 1) && (left > 0) ) # if we're in the teens range
    num_string = num_string + teenagers[left - 1] # -1 to get the indexes right
    left = 0 # with the teenagers the ones place has been taken care already so nothing else to write
    else
      num_string = num_string + tens_place[write - 1] #this handles the above-teen numbers
    end
    
    if left > 0 # any ones left?
      num_string = num_string + '-' #if any ones left add a space between tens and ones
    end
  end
  
  write = left #put the rest of the left into the write variable
  left = 0 #and "empty" left
  
  if write > 0 
    num_string = num_string + ones_place[write - 1] #-1 to get the index places correctly
  end
  
  num_string #return the string
  
end

num_at_start = 15 
num_now = num_at_start
while num_now > 2
puts english_number(num_now).capitalize + 'bottles of beer on the wall. ' + english_number(num_now) + ' bottles of beer!'
num_now = num_now - 1
puts 'Take one down, pass it around, ' + english_number(num_now) + ' bottles on the wall!'

end
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
