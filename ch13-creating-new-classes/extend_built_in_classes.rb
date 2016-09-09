# make array method
class Array

def shuffle#(some_array)
	recursive_shuffle(self, [])
end

def recursive_shuffle(unshuffled_array, shuffled_array)
	rand_word = [] 
	if unshuffled_array.length == 0
		return shuffled_array.compact
	else
		rand_word << unshuffled_array[rand(unshuffled_array.length)]
		shuffled_array << rand_word[0]
		rand_word.each do |word|
			unshuffled_array.delete_at(unshuffled_array.index(word)) end
		recursive_shuffle(unshuffled_array, shuffled_array)	
	end
end
end

# test_arr = %w(zero one two three four five)
# p test_arr.shuffle

# factorial

class Integer

	def factorial
		if self < 0
			return 'You can\'t take the factorial of a negative number!'
		end

		if self <= 1
			1
		else
			self * (self - 1).factorial
		end
	end
end

# p 4.factorial
# p 11.factorial

# number to roman

class Integer 
	def to_roman
	rom_num_arr = self.to_s.split('').reverse
	final_arr = [singles(rom_num_arr[0].to_i), tens(rom_num_arr[1].to_i), hundreds(rom_num_arr[2].to_i), thousands(rom_num_arr[3].to_i)]
	final_arr.reverse.join
end

def singles(sn)
	sin_arr = []
	if sn == 0
		sin_arr
	else
		sn > 4 == true ? ( sin_arr << "V" && (sn % 5).times do sin_arr << "I" end ) : ((sn % 5).times do sin_arr << "I" end)
	end
	sin_arr.join
end

def tens(tn)
	tn_arr = []
	tn > 4 == true ? (tn_arr << "L" && (tn % 5).times do tn_arr << "X" end ) : (tn.times do tn_arr << "X" end)
	tn_arr.join
end

def hundreds(hn)
	hun_arr = []
	hn > 4 == true ? (hun_arr << "D" && (hn % 5).times do hun_arr << "C" end ) : (hn.times do hun_arr << "C" end)
	hun_arr.join
end

def thousands(th)
	thu_arr = []
	th.times do thu_arr << "M" end
	thu_arr.join
end
end

# p 4.roman_numeral