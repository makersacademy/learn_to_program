def dictionary_sort(arr)
  sorted_words = Array.new
    while arr.empty? != true
        sorted_words << arr.min
       	arr.delete_at(arr.index(arr.min) || arr.length)
    end
  return sorted_words
end

puts dictionary_sort(["dog", "cat", "wolf", "rabbit"])