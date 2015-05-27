def old_roman_numeral num
  roman_string = ''
 	while num > 0
 		if num >= 1000
 			roman_string << 'M'
 			num = num - 1000
 		elsif num >= 500
 			roman_string << 'D'
 			num = num - 500
 		elsif num >= 100
 			roman_string << 'C'
 			num = num - 100
 		elsif num >= 50
 			roman_string << 'L'
 			num = num - 50
 		elsif num >= 10
 			roman_string << 'X'
 			num = num - 10
 		elsif num >= 5
 			roman_string << 'V'
 			num = num - 5
 		elsif num >= 1
 			roman_string << 'I'
 			num = num - 1
 		end

 	end
 	puts roman_string
end
puts "What number?"
entry = gets.to_i
old_roman_numeral entry
