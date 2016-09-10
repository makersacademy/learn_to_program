# #not working, floww controll needs to change. exceptions/patterns ok but nedds another approach

# def roman_to_integer(numerals)
  
#   singles = 0
#   tens = 0
#   hundreds = 0
#   thousands = 0
  
#   numerals_arr = numerals.split('').each(&:upcase!)
#   numerals_arr.push('holder') if numerals_arr.length == 1

#   numerals_arr.each_cons(2) do |a, b| 
#   	if a == "M" 
#   		thousands += 1
  	
#   	elsif a == "C" && b == "M" # hundreds: '900' exceptuin
#   		hundreds += 9
#   		numerals_arr.delete(a)
#   		numerals_arr.delete(b) 

#   	elsif a == "C" && b == "D" # hundreds: '400' exception
#   		hundreds += 4
#   		numerals_arr.delete(a)
#   		numerals_arr.delete(b) 

#   	elsif a == "D" # hundreds: '500'
#   		hundreds += 5

#   	elsif a == "C" # hundreds: '100'
#   		hundreds += 1

#   	elsif a == "X" && b == "C" # tens: '90' exceptuin
#   		tens += 9
#   		numerals_arr.delete(a)
#   		numerals_arr.delete(b) 

#   	elsif a == "X" && b == "L" # tens: '40' exception
#   		tens += 4
#   		numerals_arr.delete(a)
#   		numerals_arr.delete(b)

#   	elsif a == "L" # tens: '50'
#   		tens += 5

#   	elsif a == "X" # tens: '10'
#   		tens += 1

#   	elsif a == "I" && b == "X" # singles: '9' exception
#   		singles += 9
#   		numerals_arr.delete(a)
#   		numerals_arr.delete(b)

#   	elsif a == "I" && b == "V" # singles: '4' exception
#   		singles += 4 
#   		numerals_arr.delete(a)
#   		numerals_arr.delete(b)

#   	elsif a == "V" # singles '5'
#   		singles += 5

#   	elsif a == "I" # singles '1'
#   		singles += 1

#   	else
#   		"Not a valid roman numeral"
#   	end
#   end  

#   #p "thousands = #{thousands} hundreds = #{hundreds} tens = #{tens} singles = #{singles}"
#   p "#{thousands}#{hundreds}#{tens}#{singles}"
# end

# roman_to_integer("cm")
# roman_to_integer("i")

def roman_to_integer(numeral)

  total = 0
  index = numeral.length - 1
  numeral.upcase!

  # create list of values so real maths can be done
  # minus values not used in the end.
  value_hash = {"I" => 1,
                "V" => 5,
                "X" => 10,
                "L" => 50,
                "C" => 100,
                "D" => 500,
                "M" => 1000}
                # "IV" => -2, 
                # "IX" => -2,
                # "XL" => -20,
                # "XC" => -20,
                # "CD" => -200,
                # "CM" => -200}
  
  # while index >= 1 # this checks each charackter of 'numeral string' against the keys of 'value_hash' 
  #   char = numeral[index]
  #   index = index - 1
  #   legal = value_hash[char]
  #   if !legal
  #     puts 'This is not a valid roman numeral'
  #     return
  #   end

  if numeral.scan(/[^IVXLCDM]/).length > 0 
      return 'Not a valid roman numeral'

      else

  # # ensure no ilegal charachters
  # if numeral.#'contain' anythig other than IVXLCDM

  #   "Not a valid numeral"
  # elsif numeral.#contain a smaller number followed by a larger number except (insert exceptions)
  #   "Not a valid numeral"
  # else     

  

  #Do the Addition
 numeral.split("").each do |n| 
  total += value_hash[n] end

#numeral.upcase.split("").each_cons(2) do |a|
 # total -= value_hash[a.join] end


  # # create a list of excceptions to remove total
  # # remember to double amount to be removed
  # # "IV" || "IX" = -2
  # # "XL" || "XC" = -20
  # # "CD" || "CM" = -200

  # # do the subtraction
  if numeral.include?("IV") || numeral.include?("IX")
    total -= 2 
  end

  if numeral.include?("XL") || numeral.include?("XC")
    total -= 20
  end

  if numeral.include?("CD") || numeral.include?("CM")
    total -= 200
  end

end
#return result ... String or Integer???
return total

end

# p roman_to_english("IX")
# p roman_to_english("XXIV")
# p roman_to_english("mcmxcix")
# p roman_to_english("bb") # ilegal