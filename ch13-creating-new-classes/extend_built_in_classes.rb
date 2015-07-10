class Integer
	
	def factorial
		num = self
		if num < 0 
			return "Please enter a positive integer"
		elsif num <= 1
			return 1
		else
			fact = num * (num - 1).factorial
		end

		return fact
	end
	def to_roman
		num = self.to_i
		rom = ""
	 	if num <= 0
			puts "Please use a valid number to romanize."
			return false
		end

 		print "The old roman numeral of #{num} is "

		rom_chars = [ 	[1000, "M"],
						[500, "D"],
						[100, "C"],
						[50, "L"],
						[10, "X"],
						[5, "V"],
						[1, "I"], 	]

		rom_chars.each do |x|
			rom << x[1] * (num / x[0])
			num = num % x[0]
		end
		return rom
	end

	def to_new_roman

		rom = ""
		num = self
		if num <= 0
			puts "Please use a valid number to romanize."
			return false
		end

		rom_chars = [ 	[1000, "M", "M", "M"],
						[100, "C", "D", "M"],
						[10, "X", "L", "C"],
						[1, "I", "V", "X"], 	]

		print "The roman numeral of #{num} is "

		rom_chars.each do |x|
			if num == 0
				break
			end
			count = num / x[0]
			if x[1] == "M"
				rom << x[1] * count
			else
				if count == 9
					rom << x[1] + x[3]
				elsif count >= 5
					rom << x[2] + x[1] * (count - 5) 
				elsif count == 4
					rom << x[1] + x[2] 
				else
					rom << x[1] * count
				end
			end
			num = num % x[0]
		end
		return rom
	end
end

class Array
	def shuffle
		ar = self
 		shuf_ar = [ ]
		x = ar.length

	until ar == []

		y = rand(x)
		if shuf_ar[y] == nil	
			shuf_ar[y] = ar.pop
		end

	end

		return shuf_ar

	end
end

fact = 4
puts fact.factorial

roman = 1019
puts roman.to_roman

array = [1, 2, 3, 4, 5]
puts array.shuffle