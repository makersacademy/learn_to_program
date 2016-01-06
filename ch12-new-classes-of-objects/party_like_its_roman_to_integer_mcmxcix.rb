def roman_to_integer roman

  roman.upcase!
  
  numerals = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}

  solution = 0
  arr = roman.split(//) 

  arr.each.with_index do |num, ind|
  	return numerals[num] if arr.length == 1

  	if ind == arr.length-1
  	  solution += numerals[num]
  	else
  	  if numerals[num] < numerals[arr[ind+1]]
  	    solution -= numerals[num]
  	  else
  	    solution += numerals[num]
  	  end
  	end
  	
  end

  solution
end