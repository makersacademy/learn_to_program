def romnum_1_to_9(num, one, five, ten, modula)

	m = ((num % (modula*10)) / modula ).to_i
	num_of_five = (m/5).to_i
	num_of_one = m%5 
	
	if num_of_five == 1 
		if num_of_one == 4
			rom_num = one + ten 
		else
			rom_num = five + one*num_of_one
		end		
	else #num_of_five == 0
		if num_of_one == 4
			rom_num = one + five
		else
			rom_num = one*num_of_one
		end
	end

	return rom_num
end

#puts romnum_1_to_9(99, 'X', 'Y', 'Z', 10)

def roman_numeral num
	if num > 999999
		return "number too big for roman numerals"
	end

	rom_digits = ['I','V','X','L','C','D','M','P','Q','R','S','T','A','B','E','F']
	num_of_digits = (num).to_s.length
	roman_num = ''

	for i in 0...num_of_digits
		roman_num = romnum_1_to_9(num,rom_digits[i*2],rom_digits[i*2+1],rom_digits[i*2+2],10**i) + roman_num
	end
	
	return roman_num.downcase

end

#puts roman_numeral(3497)
#MMMCDXCVII

def roman_to_integer(roman, number = 0)
	roman.downcase!
	the_number = number
	case roman[0]
	when 'm'
		the_number += 1000
		roman.slice!(0)
	when 'd'
		the_number += 500
		roman.slice!(0)
	when 'c'
		if roman[1] == 'm'
			the_number += 900
			roman.slice!(0..1)
		elsif roman[1] == 'd'
			the_number += 400
			roman.slice!(0..1)
		else
			the_number += 100
			roman.slice!(0)
		end
	when 'l'
		the_number += 50 
		roman.slice!(0)
	when 'x'		
		if roman[1] == 'c'
			the_number += 90
			roman.slice!(0..1)
		elsif roman[1] == 'l'
			the_number += 40
			roman.slice!(0..1)
		else
			the_number += 10
			roman.slice!(0)
		end
	when 'v'
		the_number += 5
		roman.slice!(0)
	when 'i'		
		if roman[1] == 'x'
			the_number += 9
			roman.slice!(0..1)
		elsif roman[1] == 'v'
			the_number += 4
			roman.slice!(0..1)
		else
			the_number += 1
			roman.slice!(0)
		end
	else	
	end

	#puts "#{roman}  #{the_number}"  #for testing

	if roman == ''
		return the_number
	else
		roman_to_integer(roman,the_number)
	end
end

def test()
	num_of_error = 0 
	(1..3000).each do |x| 
		if x != roman_to_integer(roman_numeral(x))
			num_of_error += 1
			puts "the number is #{x}, #{roman_numeral(x)}, #{roman_to_integer(roman_numeral(x))} "
		end
	end
	puts "The number of errors found is #{num_of_error}"
end







