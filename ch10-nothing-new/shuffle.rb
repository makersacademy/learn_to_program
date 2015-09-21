def shuffle arr
	recursive_shuffle arr, []
end

def recursive_shuffle orig_array, shuffled_array
	rand_array = []
	while shuffled_array.length < orig_array.length
		r = rand(orig_array.length)
		if rand_array.count(r) == 0
			shuffled_array.push orig_array[r]
			rand_array.push r
		end
	end
	puts shuffled_array
end


puts "Enter the list of words to be shuffled..."
word = gets.chomp
array = []

while word!= ""
	array.push word
	word = gets.chomp
end

puts "Original array:"
puts array
puts

puts "Shuffled array"
shuffle array
puts

puts "Another shuffled array"
shuffle array
puts

puts "One last shuffled array"
shuffle array
