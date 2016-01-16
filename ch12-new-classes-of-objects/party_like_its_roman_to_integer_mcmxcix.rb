def roman_to_integer roman
  translator = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  roman = roman.upcase.split("")
  result = 0
  skip_the_next = false # Used as a marker to see if the previous value was smaller than the current
  
  roman.each_cons(2) do |i|
    # Miss out an iteration if the previous value was smaller than the current, and reset the marker:
    if skip_the_next 
      skip_the_next = false
      next 
    end
    
    if translator[i[0]] >= translator[i[1]] # If the first number is bigger...
      result += translator[i[0]] # ... add it to result
    else # If the second number is bigger ...
      result += (translator[i[1]] - translator[i[0]]) # ... add the difference to result
      skip_the_next = true # and make a note that we want to skip the next iteration
    end
  end
  
  result += translator[roman[-1]] unless skip_the_next # Add on the final value (unless it should be skipped)
  result
end