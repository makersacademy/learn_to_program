class Array
	def shuffle 
		arr = self
		recursive_shuffle arr, []
	end

	def recursive_shuffle old_array, new_array
		until old_array.length < 1
			new_array << old_array.delete_at(rand(old_array.length))
		end
		print new_array
	end
end

# shuffle([1, 4, 5, 10, 2, 2])
# shuffle(['testing', 'with', 'words'])
# shuffle(['a', 'b', 'c', 'd', 'e', 'f', 'g'])

puts [1, 4, 5, 10, 2, 2].shuffle