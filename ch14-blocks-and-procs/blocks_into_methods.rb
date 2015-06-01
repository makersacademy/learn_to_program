class Array
	
	def each_even(&was_a_block__now_a_proc)
		is_even = true

		self.each do |object|
			if is_even
				was_a_block__now_a_proc.call object
			end

			is_even = !is_even
		end
	end
end

fruits = ['apple', 'cherry', 'orange', 'pear']
fruits.each_even do |fruit|
	puts "Yum! I just love #{fruit} pies, don't you?"
end

[1, 2, 3, 4, 5].each_even do |odd_ball|
	puts "#{odd_ball} is NOT an even number!"
end
