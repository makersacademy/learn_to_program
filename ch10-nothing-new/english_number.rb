def english_number (number)
  if number < 0
  	return "Please enter a number that isn't negative"
  end
  if number == 0
  	return "Zero"
  end

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "fory", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens_place = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  other_place = ["hundred", "thousand", "million", "billion", "trillion", "quadrillion" ]

  num_string = ""
  num_array = []
  t = number.to_s.length # 6792001 = 7

left = number #6792001
  while t > 0 #7
    wright = left / 10**(t-1) # 6 792 001/1 000 000 = 6
    left = left - wright*10**(t-1) # 6 792 001 - 1 000 000 = 792 001
    num_array = num_array << wright #  
    t = t-1
  end
  puts num_array
  num_array.reverse.each_with_index { |value , index| # [1,0,0,2,9,7,6]
    if value == 0 && index != 0 && num_array[index -1] != 0
      num_string = num_string.insert(t,  "and ")                                              # "and"  
    elsif index % 3 == 0 && value > 0                                     
      num_string = num_string.insert(t, ones_place[value-1] + " ")                               # "one"
    elsif index % 3 == 0 && value > 0                      
      num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[index/3] + " ")        # "thousand" "two"              # "million" "six"
    elsif index % 3 == 1 && value > 0
      num_string = num_string.insert(t, tens_place[value-1] + " ")                               # "ninety"
    elsif index & 3 == 2 && value > 0
      num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[0] + " ")              # "hundred" "seven"
    end
  }                                                                                 # num_string = "one thousand two ninety hundred seven million six"
  num_string                                                          # num_string = "six million seven hundred ninety two thousand and one"
end
puts english_number (6792001)




