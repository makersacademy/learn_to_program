#!/usr/bin/env ruby

def beer number
	number.downto(2) {|x| puts"#{english_number(x).capitalize} bottles of beer on the wall, #{english_number(x)} bottles of beer.
Take one down and pass it around, #{english_number(x-1)} bottles of beer on the wall."}
	puts"One bottle of beer on the wall, one bottle of beer.
Take one down and pass it around, no bottles of beer on the wall."
end



def english_number number

	if number == 0
		return 'zero'
	end

	big_num_strings=['', ' thousand ', ' million ', ' billion ', ' trillion ',
			' quadrillion ', ' quintillion ',' sextillion ',' septillion ', ' octillion ', ' nonillion ',
			' decillion ', ' undecillion ' , ' duodecillion ', ' tredecillion ', ' quattuordecillion ',
			 ' quindecillion ']
	i=0
	y = number.to_s
	string_array=[]
	joined_string_array=[]
	while y.length%3!=0 #we usually work in sets of three for verbal numbers (assume american system)
		y.insert(0,"0")
	end
	number_array=y.scan(/.../).map {|e| e.to_i }
	
	number_array.reverse.each{|value|
		string_array[i]=block_number(value)
		i = i+1		
		}
	j=0
	string_array.each{|value|
	if value!=''
		joined_string_array[j]=value+big_num_strings[j]
		j=j+1
	else
		j=j+1
	end
	}
	return joined_string_array.reverse.join.strip

end



def block_number number


	
	num_string = '' # This is the string we will return
	

	if number < 0 #allow for negative numbers
		num_string = num_string + 'minus '
		number=number.abs
	end

	
	
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six','seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number
	write = left/100 # How many hundreds left?
	left = left - write*100 # Subtract off those hundreds.

	if write > 0
		# Now here's the recursion:
		hundreds = block_number write
		num_string = num_string + hundreds + ' hundred'
		if left > 0
			# So we don't write 'two hundredfifty-one'...
		num_string = num_string + ' '
		end
	end

		write = left/10 # How many tens left?
	left = left - write*10 # Subtract off those tens.
	if write > 0
		if ((write == 1) and (left > 0))
		num_string = num_string + teenagers[left-1]
		left = 0
		else
		num_string = num_string + tens_place[write-1]
		end
	
		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left # How many ones left to write out?
	left = 0 # Subtract off those ones.

	if write > 0
		num_string = num_string + ones_place[write-1]
	end

	return num_string
end

beer(10)

