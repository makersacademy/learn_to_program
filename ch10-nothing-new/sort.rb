def sort(arr)
  recursive_sort arr, []
end

def recursive_sort(original_array, sorted_array)
  smallest = original_array[0]

  original_array.each do |word|
    smallest = word if smallest > word
  end

  sorted_array << smallest
  original_array.delete_at original_array.index smallest

  recursive_sort(original_array, sorted_array) unless original_array.empty?

  sorted_array
end
