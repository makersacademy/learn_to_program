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

  while t > 0 #7
    num_array = num_array << (number / 10**(t-1)) #  6792001/(10^6) = 6  /  num_array = [] << [6] << [7] << ... << [1]  /  [6,7,9,2,0,0,1]
    t = t-1
  end
  
  num_array.reverse.each_with_index { |value , index| # [1,0,0,2,9,7,6]
    if index % 3 == 0 && num_array[index] != 0                                      
      num_string = num_string << ones_place[value-1]                                # "one"
    elsif index % 3 == 0 && value > 0 && num_array[index] != 0                      
      num_string = num_string << other_place[index/3] << ones_place[value-1]        # "thousand" "two"              # "million" "six"
    elsif index % 3 == 1
      num_string = num_string << tens_place[value-1]                                # "ninety"
    elsif index & 3 == 2
      num_string = num_string << other_place[0] << ones_place[value-1]              # "hundred" "seven"
    end
  }                                                                                 # num_string = "one thousand two ninety hundred seven million six"
  print num_string.reverse                                                          # num_string = "six million seven hundred ninety two thousand one"
end



english_number (6792001)



