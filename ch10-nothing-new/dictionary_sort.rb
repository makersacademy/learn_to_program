def dictionary_sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  # your code here
  return sorted_array if unsorted_array.length <= 0
  
  small = unsorted_array.pop

  still_2sort = []

  unsorted_array.each do |e|

  	if e.downcase < small.downcase

  		still_2sort << small

  		small = e

  	else

  		still_2sort << e

  	end

  end

  sorted_array << small

  # puts "#{unsorted_array}\n#{still_2sort}\n#{small}\n#{sorted_array}\n"

  recursive_sort(still_2sort,sorted_array)

end

# puts dictionary_sort(['can','Feel','singing','like','a','Can'])