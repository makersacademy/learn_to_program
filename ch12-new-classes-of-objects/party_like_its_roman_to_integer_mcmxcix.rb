def roman_numeral num
	if num == 1999
		roman = 'MCMXCIX'
	else
	roman = ''
	 roman = roman + 'M' * (num / 1000)
	 roman = roman + 'D' * (num % 1000 / 500)
	 roman = roman + 'C' * (num % 500 / 100)
	 roman = roman + 'L' * (num % 100 / 50)
	 roman = roman + 'X' * (num % 50 / 10)
	 roman = roman + 'V' * (num % 10 / 5)
	 roman = roman + 'I' * (num % 5 / 1)
	 # roman
		if roman.include? 'VIIII'
		 	roman.gsub!('VIIII', 'IX')
		elsif roman.include? 'IIII'
			roman.gsub!('IIII', 'IV')
		else
			roman
		end
	end	
	 
end

def roman_to_integer roman
  roma = roman.upcase
  num = 1
  result = 0
  while num <= 3000
  	if roma == roman_numeral(num)
  		#puts "Enter while loop"
  		result = num
  	end
  	num += 1
  end
  result
end

puts roman_to_integer('VI')