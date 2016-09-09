#not working, floww controll needs to change. exceptions/patterns ok but nedds another approach

def roman_to_integer(numerals)
  
  singles = 0
  tens = 0
  hundreds = 0
  thousands = 0
  
  numerals_arr = numerals.split('').each(&:upcase!)
  numerals_arr.push('holder') if numerals_arr.length == 1

  numerals_arr.each_cons(2) do |a, b| 
  	if a == "M" 
  		thousands += 1
  	
  	elsif a == "C" && b == "M" # hundreds: '900' exceptuin
  		hundreds += 9
  		numerals_arr.delete(a)
  		numerals_arr.delete(b) 

  	elsif a == "C" && b == "D" # hundreds: '400' exception
  		hundreds += 4
  		numerals_arr.delete(a)
  		numerals_arr.delete(b) 

  	elsif a == "D" # hundreds: '500'
  		hundreds += 5

  	elsif a == "C" # hundreds: '100'
  		hundreds += 1

  	elsif a == "X" && b == "C" # tens: '90' exceptuin
  		tens += 9
  		numerals_arr.delete(a)
  		numerals_arr.delete(b) 

  	elsif a == "X" && b == "L" # tens: '40' exception
  		tens += 4
  		numerals_arr.delete(a)
  		numerals_arr.delete(b)

  	elsif a == "L" # tens: '50'
  		tens += 5

  	elsif a == "X" # tens: '10'
  		tens += 1

  	elsif a == "I" && b == "X" # singles: '9' exception
  		singles += 9
  		numerals_arr.delete(a)
  		numerals_arr.delete(b)

  	elsif a == "I" && b == "V" # singles: '4' exception
  		singles += 4 
  		numerals_arr.delete(a)
  		numerals_arr.delete(b)

  	elsif a == "V" # singles '5'
  		singles += 5

  	elsif a == "I" # singles '1'
  		singles += 1

  	else
  		"Not a valid roman numeral"
  	end
  end  

  #p "thousands = #{thousands} hundreds = #{hundreds} tens = #{tens} singles = #{singles}"
  p "#{thousands}#{hundreds}#{tens}#{singles}"
end

roman_to_integer("cm")
roman_to_integer("i")
