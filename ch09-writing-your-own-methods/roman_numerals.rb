def roman_numeral num
	@string = ""
	@num = num
	@left = num

	def conversion(string_rep, num_rep)
		divide = @num / num_rep
		@left = @num - divide * num_rep
		@string << string_rep * divide
		@num = @left
	end

	hash = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1}
	hash.each {|x, y| conversion(x, y)}

	@string

end