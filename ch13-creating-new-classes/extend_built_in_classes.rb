class Integer

	def permutation
		result = []
		bag = (0...self).to_a
		for i in 0...self
			draw = rand(self-i)
			result << bag[draw]
			bag.delete(bag[draw])
		end
		return result
	end

	def factorial
		if self <0
			return nil
		end
		if self == 0 
			return 1
		else
			return self*(self-1).factorial
		end
	end

	def small_english_number(with_and = false)
		num = self
		the_number = ''
		if num == 0
			the_number == 'zero'
		end
		ones =['one','two','three','four','five','six','seven','eight','nine']
		teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
		tens = ['ten','tweenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
		if num > 99
			current = (num/100).to_i
			the_number = ones[current-1] + ' hundred '
			the_number += 'and ' if with_and == true
			num = num - current*100 
		end
		if num > 0 && num < 10
			the_number = the_number + ones[num-1]
		elsif num > 10 && num < 20
			the_number = the_number + teens[num-11]
		elsif num > 19 && num < 100 
			the_number = the_number + tens[(num/10).to_i - 1] + ' ' + ones[(num%10).to_i - 1]
		end
		return the_number
	end


	def english(with_and = false)
		num = self
		left = num
		current = 0
		the_number = ''
		large_units = [" trillion "," billion "," million "," thousand ",""]
		for i in 0..4
			power_index = 3*(4-i)
			if left.to_s.length > power_index
				current = (left / (10**power_index)).to_i
				left -= current*(10**power_index)
				if with_and == true
					the_number += (current.small_english_number(true) + large_units[i])	
				else
					the_number += (current.small_english_number + large_units[i])	
				end
				the_number += 'and ' if (with_and == true && i != 4)
			end
		end
		return the_number 
	end

	def romnum_1_to_9(one, five, ten, modula)
		num = self
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

	def to_roman_new
		num = self
		if num > 89999999
			return "number too big for roman numerals"
		end
		rom_digits = ['I','V','X','L','C','D','M','P','Q','R','S','T','A','B','E','F']
		num_of_digits = (num).to_s.length
		roman_num = ''
		for i in 0...num_of_digits
			roman_num = num.romnum_1_to_9(rom_digits[i*2],rom_digits[i*2+1],rom_digits[i*2+2],10**i) + roman_num
		end		
		return roman_num
	end

	def to_roman
	num_of_m = (self/1000).to_i
	num_of_d = ((self%1000)/500).to_i
	num_of_c = ((self%500)/100).to_i
	num_of_l = ((self%100)/50).to_i
	num_of_x = ((self%50)/10).to_i
	num_of_v = ((self%10)/5).to_i
	num_of_i = (self%5).to_i

	return "#{'M'*num_of_m}#{'D'*num_of_d}#{'C'*num_of_c}#{'L'*num_of_l}#{'X'*
	num_of_x}#{'V'*num_of_v}#{'I'*num_of_i}"
	end

	@@romnum_list = {'I' => 1, 'V' => 5,'X' => 10,'L' => 50,'C' => 100,'D' => 500,'M' => 
					1000,'P' => 5000,'Q' => 10000,'R' => 50000,'S' => 100000,'T' => 500000,'A' => 1000000,
					'B' => 5000000,'E' => 10000000,'F' => 50000000}

	def Integer.romnum_list
		@@romnum_list
	end
end


class Array


	def shuffle(shuffled_array=[])
		array = self
		if array.length != 0 
			selected = rand(array.length)
			shuffled_array.push(array[selected])
			array.delete(array[selected])
			array.shuffle(shuffled_array)
		else
			return shuffled_array
		end
	end

	def shuffle1
		shuffled_array = []
		permutation = self.length.permutation
		for i in 0...self.length
			shuffled_array << self[permutation[i]]
		end
		return shuffled_array
	end

	def shuffle2
		array_to_shuffle = []
		for i in 0...self.length
			array_to_shuffle << self[i]
		end	
		shuffled_array = []
		for i in 0...self.length
			selected = array_to_shuffle.sample
			shuffled_array << selected
			array_to_shuffle.delete(selected)
		end
		return shuffled_array
	end

end


#puts "#{3497.to_roman.split('').shuffle}"
