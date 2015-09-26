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
  num_arr_rev = num_array.reverse
  num_arr_rev.each_with_index { |value , index| # [6,7,9,2,0,0,1]                                           
    if index % 3 == 0 && value > 0 && index != 0                       
      num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[index/3] + " ")        # "thousand" "two"              # "million" "six"
    elsif index % 3 == 0 && value > 0 && index == 0  
      num_string = num_string.insert(t, ones_place[value-1])
    elsif index % 3 == 1 && value > 0
       if value == 1 
        num_string = num_string.delete(ones_place[num_arr_rev[index-1]-1])
        num_string = num_string.insert(t, teens_place[num_arr_rev[index-1]-1] + " ")
      else
        num_string = num_string.insert(t, tens_place[value-1] + " ")     
      end
    elsif index % 3 == 2 && value > 0
      num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[0] +  " and ")              # "hundred" "seven"
    end
  }  
  num_string                                                        # num_string = "six million seven hundred ninety two thousand and one"
end
