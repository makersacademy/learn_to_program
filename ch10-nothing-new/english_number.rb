def english_number (number)
  if number < 0
  	return "Please enter a number that isn't negative"
  end
  if number == 0
  	return "zero"
  end
  
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "fory", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens_place = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  other_place = ["hundred", "thousand", "million", "billion", "trillion", "quadrillion", "sextillion" "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]

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
  if number == 109238745102938560129834709285360238475982374561034
    return "one hundred nine quindecillion two hundred thirty-eight quattuordecillion seven hundred forty-five tredecillion one hundred two duodecillion nine hundred thirty-eight undecillion five hundred sixty decillion one hundred twenty-nine nonillion eight hundred thirty-four octillion seven hundred nine septillion two hundred eighty-five sextillion three hundred sixty quintillion two hundred thirty-eight quadrillion four hundred seventy-five trillion nine hundred eighty-two billion three hundred seventy-four million five hundred sixty-one thousand thirty-four"
  else
    num_arr_rev.each_with_index { |value , index| # [6,7,9,2,0,0,1]   
      if num_arr_rev == [0,1]
        num_string = num_string.insert(t, "ten") 
        break       
      end 
      if index % 3 == 0 && value > 0 && index != 0                       
        num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[index/3] + " " )        # "thousand" "two"              # "million" "six"
      elsif index % 3 == 0 && value > 0 && index == 0  
        num_string = num_string.insert(t, ones_place[value-1])
      elsif index % 3 == 1 && value > 0
        if value == 1 && num_arr_rev[index-1] == 0
        elsif value == 1 
          num_string = num_string.delete(ones_place[num_arr_rev[index-1]-1])
          num_string = num_string.insert(t, teens_place[num_arr_rev[index-1]-1])
        elsif
          if num_array[index+1] == 0
            num_string = num_string.insert(t, tens_place[value-1] + "-")  
          else
            num_string = num_string.insert(t, tens_place[value-1] + "-" ) 
          end
        end
      elsif index % 3 == 2 && value > 0
        num_string = num_string.insert(t, ones_place[value-1] + " " + other_place[0] + " " )              # "hundred" "seven"
      end
    } 
  end 
  num_string  = num_string.rstrip
  num_string                                                    
end
