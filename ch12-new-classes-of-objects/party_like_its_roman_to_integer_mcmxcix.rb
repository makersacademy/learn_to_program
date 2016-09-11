def roman_to_integer roman
roman_digits = {'i'=>1, 'v'=>5, 'x'=>10, 'l'=> 50, 'c'=>100, 'd'=>500, 'm'=>1000} #roman digits to store in the hash

total = 0 #the returned number
prev  = 0 #value of the previous digit
index = roman.length - 1 #-1 to align with the hash

while index >= 0
  n = roman[index].downcase #downcase all the input
  index -= 1 #we come from the end of the number
  value = roman_digits[n]
  if !value
      puts "it's not a roman numeral"
    return
  end
  if value < prev
      value *= -1 #deduct the value for 4, 9, 40, 90, 400, 900
  else
      prev = value #set current value to prev for comparison
  end
  
total = total + value #add the value of the curernt digit to the total
end
total #the return value of the method
end
