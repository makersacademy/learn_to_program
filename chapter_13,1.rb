#extended built-in classes
# array shuffle only class array and then def shuffle with old code
class Array
	def shuffle 
		arr = self #access to current object 
		shuf = []
		while arr.length > 0 
			rand_index = rand(arr.length)
			curr_index = 0 
			new_arr = []
			arr.each do |item|
				if curr_index == rand_index
				shuf.push item
				else new_arr.push item 
				end 
				curr_index = curr_index + 1
			end
		arr = new_arr
		end 
	shuf 
	end
end  
# Integer Factorial
class Integer
	def factorial 
		if self <= 1 #!0 =1 !1 = 1, !2 = 1*2, !3= 1*2*3 
			1
		else 
			self * (self-1).factorial #recursive with self-1 
		end 
	end 
#to_roman
	def to_roman 
		roman = "" #as roman numerals are strings
		roman = roman + "M" * (self/1000) 
		roman = roman + "D" * (self %1000/500) 
		roman = roman + "C" * (self %500/100)
		roman = roman + "L" * (self %100/50)
		roman = roman + "X" * (self %50/10)
		roman = roman + "V" * (self %10/5)
		roman = roman + "I" * (self %5/1)
		roman 
		end
end 
print ["a","b","c","d","e","f"].shuffle
puts 
puts 4.factorial 
puts 7.to_roman





