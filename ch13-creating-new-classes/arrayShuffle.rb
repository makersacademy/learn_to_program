class Array
	def shuffle
		sort_by{rand}
	end
end

puts [1,2,3,4,5].shuffle