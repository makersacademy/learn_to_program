#Not all rules have been implemented.

def roman_to_integer roman
  roman = roman.upcase
  roman_num = roman.split(//)
  nums = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,"C" => 100,"D" => 500,"M" => 1000}
  total = 0
  prev = 0
  num_less_count = 0
  continuous_chars = 1
  invalid_char = false
  roman_num.reverse!
  if (roman_num - ["I","V","X","L","C","D","M"]) != []
	invalid_char = true
  end
  if invalid_char != true
	  for counter in 0...roman_num.length-1     #Check that not more than 3 of the same chars in a row
		if nums[roman_num[counter]] == nums[roman_num[counter+1]]
			continuous_chars += 1
			break if continuous_chars > 3
		elsif nums[roman_num[counter]] != nums[roman_num[counter+1]]	
			continuous_chars = 1	
		end
	  end
	  for count in 0...roman_num.length
		if nums[roman_num[count]] >= prev
			total += nums[roman_num[count]]
			prev = nums[roman_num[count]]
			num_less_count = 0
		elsif nums[roman_num[count]] < prev
			total -= nums[roman_num[count]]
			num_less_count += 1					#You would not put more than one smaller number in front of a larger number to subtract.
			break if num_less_count > 1
		end	
	  end
	  
	end  
	if invalid_char
		puts "Invalid character in your roman numeral. Only I, V, X, L, C, D and M allowed." 
		return
	end	
	if num_less_count > 1
		puts "Invalid Roman Numeral - only 1 character can denote less than, e.g. 'IX' is valid but 'IIX' is not."
		return
	end	
	if continuous_chars > 3
		puts "Invalid Roman Numeral - more than 3 of the same character in a row."
		return
	end
  total
 end

# print roman_to_integer('XXkIV');puts 		#Invalid representation of 23 - should be "XXIII" 
# print roman_to_integer('aXXIV');puts 		#Invalid representation of 23 - should be "XXIII" 
# print roman_to_integer('XXIVr');puts 		#Invalid representation of 23 - should be "XXIII" 
# print roman_to_integer('XXIIV');puts 		#Invalid representation of 23 - should be "XXIII"
# print roman_to_integer('MXXXLV');puts 		#Invalid representation of 1025 - should be "MXXV"
# print roman_to_integer('MXXXX');puts 		#Invalid representation of 1040 - should be "MXL"
# print roman_to_integer('MXXXXV');puts 		#Invalid representation of 1045 - should be "MXLV"
# print roman_to_integer('mcmlxviii');puts 		#for 1968
# print roman_to_integer('XXVI');puts 			#for 26
# print roman_to_integer('XXIV');puts 			#for 24
# print roman_to_integer('MCMLXXXVI');puts 	#for 1986
# print roman_to_integer ("mcmxcix");puts		#for 1999

=begin
RULES
http://www.blackwasp.co.uk/RomanToNumber.aspx
1)When a symbol appears after a larger symbol it is added.
2)A small-value numeral may be placed to the left of a larger value. 
Where this occurs, for example IX, the smaller numeral is subtracted from the larger. 
This means that IX is nine and IV is four. The subtracted digit must be at least one tenth 
of the value of the larger numeral and must be either I, X or C. Accordingly, ninety-nine is not 
IC but rather XCIX. The XC part represents ninety and the IX adds the nine. In addition, once a value 
has been subtracted from another, no further numeral or pair may match or exceed the subtracted value. 
This disallows values such as MCMD or CMC.

You would not put more than one smaller number in front of a larger number to subtract. For example, IIV would not mean 3.

3) Don't use the same symbol more than three times in a row.

4) You must separate ones, tens, hundreds, and thousands as separate items. That means that 99 is XCIX, 90 + 9, 
but never should be written as IC. Similarly, 999 cannot be IM and 1999 cannot be MIM.

=end
